Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AABDB599ABB
	for <lists+linux-spdx@lfdr.de>; Fri, 19 Aug 2022 13:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348556AbiHSLFi (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 19 Aug 2022 07:05:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348250AbiHSLEy (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 19 Aug 2022 07:04:54 -0400
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8687FBA51
        for <linux-spdx@vger.kernel.org>; Fri, 19 Aug 2022 04:04:50 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4M8Jms4SBrz4x1G;
        Fri, 19 Aug 2022 21:04:45 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
        s=201909; t=1660907086;
        bh=tNELHKAzDyLfryPFFWAOm18Pibmr2pSODguoP2aVEUo=;
        h=From:To:Cc:Subject:Date:From;
        b=cv+Xf3TKy2aLhGniGRp+1SFEJilJ7MU/tg8Wbr1y1nnH2aunvxi9RyVTVaJFZnOaZ
         d20HjqLhgTzmW+I59GNgnZlyc5ynHWVTRM7MMjt4dicx0eAk6llT0+0gue/CPfeqEU
         8m7rnvELSt7CUmWaArGfbqjZkiTT2DDkvXyHk4cMUfAwG1utMfy6NHSGjFms1hpSHK
         13Q5q0+vt5/WyNaZK/qa/YrsmsNVva5Me2GZUgOmVqvmrjnWxYJI2QErlBaC9IDIXn
         dr3TEofXr2mcgZao1RXm5KUG5afF8hOSf50uBOBJNUZHNPD4SD5bVkTv+86FgRWx/E
         jgTpu5GREio9A==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     <linuxppc-dev@lists.ozlabs.org>
Cc:     <linux-spdx@vger.kernel.org>, <gregkh@linuxfoundation.org>,
        <tglx@linutronix.de>
Subject: [PATCH] powerpc/boot: Convert more files to use SPDX tags
Date:   Fri, 19 Aug 2022 21:04:30 +1000
Message-Id: <20220819110430.433984-1-mpe@ellerman.id.au>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

These files are all plain GPL 2.0, with a second sentence about being
licensed as-is.

Similar to the rule in commit 577b61cee5b2 ("treewide: Replace GPLv2
boilerplate/reference with SPDX - gpl-2.0_398.RULE").

Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
---
 arch/powerpc/boot/44x.h          | 5 +----
 arch/powerpc/boot/4xx.h          | 5 +----
 arch/powerpc/boot/ops.h          | 6 ++----
 arch/powerpc/boot/serial.c       | 6 ++----
 arch/powerpc/boot/simple_alloc.c | 6 ++----
 5 files changed, 8 insertions(+), 20 deletions(-)

diff --git a/arch/powerpc/boot/44x.h b/arch/powerpc/boot/44x.h
index 02563443788a..9b15e59522d6 100644
--- a/arch/powerpc/boot/44x.h
+++ b/arch/powerpc/boot/44x.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * PowerPC 44x related functions
  *
  * Copyright 2007 David Gibson, IBM Corporation.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #ifndef _PPC_BOOT_44X_H_
 #define _PPC_BOOT_44X_H_
diff --git a/arch/powerpc/boot/4xx.h b/arch/powerpc/boot/4xx.h
index 7dc5d45361bc..77f15d124c81 100644
--- a/arch/powerpc/boot/4xx.h
+++ b/arch/powerpc/boot/4xx.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * PowerPC 4xx related functions
  *
  * Copyright 2007 IBM Corporation.
  * Josh Boyer <jwboyer@linux.vnet.ibm.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #ifndef _POWERPC_BOOT_4XX_H_
 #define _POWERPC_BOOT_4XX_H_
diff --git a/arch/powerpc/boot/ops.h b/arch/powerpc/boot/ops.h
index 8334bc3cbe49..a40c2162a4e9 100644
--- a/arch/powerpc/boot/ops.h
+++ b/arch/powerpc/boot/ops.h
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Global definition of all the bootwrapper operations.
  *
  * Author: Mark A. Greer <mgreer@mvista.com>
  *
- * 2006 (c) MontaVista Software, Inc.  This file is licensed under
- * the terms of the GNU General Public License version 2.  This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2006 (c) MontaVista Software, Inc.
  */
 #ifndef _PPC_BOOT_OPS_H_
 #define _PPC_BOOT_OPS_H_
diff --git a/arch/powerpc/boot/serial.c b/arch/powerpc/boot/serial.c
index 54d2522be485..57b23ff53fde 100644
--- a/arch/powerpc/boot/serial.c
+++ b/arch/powerpc/boot/serial.c
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Generic serial console support
  *
@@ -6,10 +7,7 @@
  * Code in serial_edit_cmdline() copied from <file:arch/ppc/boot/simple/misc.c>
  * and was written by Matt Porter <mporter@kernel.crashing.org>.
  *
- * 2001,2006 (c) MontaVista Software, Inc.  This file is licensed under
- * the terms of the GNU General Public License version 2.  This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2001,2006 (c) MontaVista Software, Inc.
  */
 #include <stdarg.h>
 #include <stddef.h>
diff --git a/arch/powerpc/boot/simple_alloc.c b/arch/powerpc/boot/simple_alloc.c
index 65ec135d0157..eccbf3b6cc00 100644
--- a/arch/powerpc/boot/simple_alloc.c
+++ b/arch/powerpc/boot/simple_alloc.c
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Implement primitive realloc(3) functionality.
  *
  * Author: Mark A. Greer <mgreer@mvista.com>
  *
- * 2006 (c) MontaVista, Software, Inc.  This file is licensed under
- * the terms of the GNU General Public License version 2.  This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2006 (c) MontaVista, Software, Inc.
  */
 
 #include <stddef.h>
-- 
2.37.1

