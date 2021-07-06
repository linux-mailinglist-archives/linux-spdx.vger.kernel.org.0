Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 856A73BD6A0
	for <lists+linux-spdx@lfdr.de>; Tue,  6 Jul 2021 14:38:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234196AbhGFMl3 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 6 Jul 2021 08:41:29 -0400
Received: from ixit.cz ([94.230.151.217]:34996 "EHLO ixit.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1344689AbhGFMaR (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Tue, 6 Jul 2021 08:30:17 -0400
X-Greylist: delayed 391 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Jul 2021 08:30:16 EDT
Received: from newone.lan (unknown [94.230.151.217])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ixit.cz (Postfix) with ESMTPSA id CB23523B1D;
        Tue,  6 Jul 2021 14:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
        t=1625574062;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=o7ANFV8hmyWcjexOMXzkppXFsGTlgxhNBTqQF4RP1PU=;
        b=Y/L5croFVCRbl82RaY05QdTsQovF7eOyLy4gjkm7kiu8dFFk8dck//AHp9NywpXkQHYF/w
        r4dDFjb+IZWhTN6Z40vp3cbq3yzsjnM6OMPUANkOvkFKzCUFeUgNEnu0LeOjfGmL/5f7nV
        pEDmZf6kg1+eHoHt2OgyebGMTixh1Ao=
From:   David Heidelberg <david@ixit.cz>
To:     tglx@linutronix.de, gregkh@linuxfoundation.org, corbet@lwn.net
Cc:     linux-spdx@vger.kernel.org, David Heidelberg <david@ixit.cz>
Subject: [PATCH] LICENSES: replace deprecated SPDX GPL naming
Date:   Tue,  6 Jul 2021 14:20:18 +0200
Message-Id: <20210706122018.45355-1-david@ixit.cz>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Modern SPDX naming is more explicit, clear and easier to understand.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 Documentation/process/license-rules.rst | 66 +++++++++++++------------
 1 file changed, 34 insertions(+), 32 deletions(-)

diff --git a/Documentation/process/license-rules.rst b/Documentation/process/license-rules.rst
index 2ef44ada3f11..32d14215fa1a 100644
--- a/Documentation/process/license-rules.rst
+++ b/Documentation/process/license-rules.rst
@@ -1,4 +1,4 @@
-.. SPDX-License-Identifier: GPL-2.0
+.. SPDX-License-Identifier: GPL-2.0-only
 
 .. _kernel_licensing:
 
@@ -6,7 +6,7 @@ Linux kernel licensing rules
 ============================
 
 The Linux Kernel is provided under the terms of the GNU General Public
-License version 2 only (GPL-2.0), as provided in LICENSES/preferred/GPL-2.0,
+License version 2 only (GPL-2.0-only), as provided in LICENSES/preferred/GPL-2.0,
 with an explicit syscall exception described in
 LICENSES/exceptions/Linux-syscall-note, as described in the COPYING file.
 
@@ -18,12 +18,12 @@ The license described in the COPYING file applies to the kernel source
 as a whole, though individual source files can have a different license
 which is required to be compatible with the GPL-2.0::
 
-    GPL-1.0+  :  GNU General Public License v1.0 or later
-    GPL-2.0+  :  GNU General Public License v2.0 or later
-    LGPL-2.0  :  GNU Library General Public License v2 only
-    LGPL-2.0+ :  GNU Library General Public License v2 or later
-    LGPL-2.1  :  GNU Lesser General Public License v2.1 only
-    LGPL-2.1+ :  GNU Lesser General Public License v2.1 or later
+    GPL-1.0-or-later  :  GNU General Public License v1.0 or later
+    GPL-2.0-or-later  :  GNU General Public License v2.0 or later
+    LGPL-2.0-only     :  GNU Library General Public License v2 only
+    LGPL-2.0-or-later :  GNU Library General Public License v2 or later
+    LGPL-2.1-only     :  GNU Lesser General Public License v2.1 only
+    LGPL-2.1-or-later :  GNU Lesser General Public License v2.1 or later
 
 Aside from that, individual files can be provided under a dual license,
 e.g. one of the compatible GPL variants and alternatively under a
@@ -99,22 +99,22 @@ License identifier syntax
    of keywords "AND", "OR" separating sub-expressions and surrounded by
    "(", ")" .
 
-   License identifiers for licenses like [L]GPL with the 'or later' option
-   are constructed by using a "+" for indicating the 'or later' option.::
+   License identifiers for licenses like [L]GPL with
+   the 'or later' or 'only' option::
 
-      // SPDX-License-Identifier: GPL-2.0+
-      // SPDX-License-Identifier: LGPL-2.1+
+      // SPDX-License-Identifier: GPL-2.0-or-later
+      // SPDX-License-Identifier: LGPL-2.1-or-later
 
    WITH should be used when there is a modifier to a license needed.
    For example, the linux kernel UAPI files use the expression::
 
-      // SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note
-      // SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note
+      // SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note
+      // SPDX-License-Identifier: GPL-2.0-or-later WITH Linux-syscall-note
 
    Other examples using WITH exceptions found in the kernel are::
 
-      // SPDX-License-Identifier: GPL-2.0 WITH mif-exception
-      // SPDX-License-Identifier: GPL-2.0+ WITH GCC-exception-2.0
+      // SPDX-License-Identifier: GPL-2.0-only WITH mif-exception
+      // SPDX-License-Identifier: GPL-2.0-or-later WITH GCC-exception-2.0
 
    Exceptions can only be used with particular License identifiers. The
    valid License identifiers are listed in the tags of the exception text
@@ -125,28 +125,28 @@ License identifier syntax
    to be selected.  For example, some dtsi files are available under dual
    licenses::
 
-      // SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
+      // SPDX-License-Identifier: GPL-2.0-only OR BSD-3-Clause
 
    Examples from the kernel for license expressions in dual licensed files::
 
-      // SPDX-License-Identifier: GPL-2.0 OR MIT
-      // SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
-      // SPDX-License-Identifier: GPL-2.0 OR Apache-2.0
-      // SPDX-License-Identifier: GPL-2.0 OR MPL-1.1
-      // SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) OR MIT
-      // SPDX-License-Identifier: GPL-1.0+ OR BSD-3-Clause OR OpenSSL
+      // SPDX-License-Identifier: GPL-2.0-only OR MIT
+      // SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+      // SPDX-License-Identifier: GPL-2.0-only OR Apache-2.0
+      // SPDX-License-Identifier: GPL-2.0-only OR MPL-1.1
+      // SPDX-License-Identifier: (GPL-2.0-only WITH Linux-syscall-note) OR MIT
+      // SPDX-License-Identifier: GPL-1.0-or-later OR BSD-3-Clause OR OpenSSL
 
    AND should be used if the file has multiple licenses whose terms all
    apply to use the file. For example, if code is inherited from another
    project and permission has been given to put it in the kernel, but the
    original license terms need to remain in effect::
 
-      // SPDX-License-Identifier: (GPL-2.0 WITH Linux-syscall-note) AND MIT
+      // SPDX-License-Identifier: (GPL-2.0-only WITH Linux-syscall-note) AND MIT
 
    Another other example where both sets of license terms need to be
    adhered to is::
 
-      // SPDX-License-Identifier: GPL-1.0+ AND LGPL-2.1+
+      // SPDX-License-Identifier: GPL-1.0-or-later AND LGPL-2.1-or-later
 
 License identifiers
 -------------------
@@ -206,17 +206,18 @@ kernel, can be broken down into:
 
    File format examples::
 
-      Valid-License-Identifier: GPL-2.0
-      Valid-License-Identifier: GPL-2.0+
-      SPDX-URL: https://spdx.org/licenses/GPL-2.0.html
+      Valid-License-Identifier: GPL-2.0-only
+      Valid-License-Identifier: GPL-2.0-or-later
+      SPDX-URL: https://spdx.org/licenses/GPL-2.0-only.html
+      SPDX-URL: https://spdx.org/licenses/GPL-2.0-or-later.html
       Usage-Guide:
         To use this license in source code, put one of the following SPDX
 	tag/value pairs into a comment according to the placement
 	guidelines in the licensing rules documentation.
 	For 'GNU General Public License (GPL) version 2 only' use:
-	  SPDX-License-Identifier: GPL-2.0
+	  SPDX-License-Identifier: GPL-2.0-only
 	For 'GNU General Public License (GPL) version 2 or any later version' use:
-	  SPDX-License-Identifier: GPL-2.0+
+	  SPDX-License-Identifier: GPL-2.0-or-later
       License-Text:
         Full license text
 
@@ -389,7 +390,8 @@ kernel, can be broken down into:
 
       SPDX-Exception-Identifier: Linux-syscall-note
       SPDX-URL: https://spdx.org/licenses/Linux-syscall-note.html
-      SPDX-Licenses: GPL-2.0, GPL-2.0+, GPL-1.0+, LGPL-2.0, LGPL-2.0+, LGPL-2.1, LGPL-2.1+
+      SPDX-Licenses: GPL-2.0-only, GPL-2.0-or-later, GPL-1.0-or-later,
+                     LGPL-2.0-only, LGPL-2.0-or-later, LGPL-2.1-only, LGPL-2.1-or-later
       Usage-Guidance:
         This exception is used together with one of the above SPDX-Licenses
 	to mark user-space API (uapi) header files so they can be included
@@ -404,7 +406,7 @@ kernel, can be broken down into:
 
       SPDX-Exception-Identifier: GCC-exception-2.0
       SPDX-URL: https://spdx.org/licenses/GCC-exception-2.0.html
-      SPDX-Licenses: GPL-2.0, GPL-2.0+
+      SPDX-Licenses: GPL-2.0-only, GPL-2.0-or-later
       Usage-Guidance:
         The "GCC Runtime Library exception 2.0" is used together with one
 	of the above SPDX-Licenses for code imported from the GCC runtime
-- 
2.30.2

