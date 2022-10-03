Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA115F33FE
	for <lists+linux-spdx@lfdr.de>; Mon,  3 Oct 2022 18:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiJCQ7J (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 3 Oct 2022 12:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiJCQ7H (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 3 Oct 2022 12:59:07 -0400
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C74DC31373;
        Mon,  3 Oct 2022 09:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
        MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
        Reply-To:Content-Type:Content-ID:Content-Description;
        bh=f+U7SMF/3AAA6eWHksnS/wQi71PBiBLBVnYG4Y0Gges=; b=Z8HL0HFuMnlEySSU2t15JD2wiC
        LShqKF1r/gbcUC97Al5ENYrRUNe4ekWEVK79D/InLXIC9wmMYHR7KgccCg9klSMuaVFbPsHN6edZg
        l6cHkFzlPx/LukyCZGP70REHJIxgj/GmNycppINWcFF7ICsUAnXfqUD35aiBfSmo4znNn5ZTyVVmi
        K+0WloJxHk/QcoJdIAWMFEvvGhzSGrnC1+QXdw674oXxk/VYND+Um6AqPR1leXO/pDSUiKA/kUD/u
        VfVi60N3XsM5VTcbGtOuicE/ERoNUujvRtnhU/Tv81EbtK5R/NW1spUzUz1+jPiSkI4q0qnuilIht
        kWOR+2OA==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
        id 1ofOmK-006xNN-G6; Mon, 03 Oct 2022 16:58:52 +0000
From:   Luis Chamberlain <mcgrof@kernel.org>
To:     tglx@linutronix.de, gregkh@linuxfoundation.org,
        akpm@linux-foundation.org, shuah@kernel.org, keescook@chromium.org
Cc:     joe@perches.com, mcgrof@kernel.org, rostedt@goodmis.org,
        linux-spdx@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org,
        Goldwyn Rodrigues <rgoldwyn@suse.com>,
        Kuno Woudt <kuno@frob.nl>,
        Richard Fontana <fontana@sharpeleven.org>,
        copyleft-next@lists.fedorahosted.org,
        Ciaran Farrell <Ciaran.Farrell@suse.com>,
        Christopher De Nicolo <Christopher.DeNicolo@suse.com>,
        Christoph Hellwig <hch@lst.de>,
        Jonathan Corbet <corbet@lwn.net>,
        Thorsten Leemhuis <linux@leemhuis.info>
Subject: [PATCH v11 2/2] testing: use the copyleft-next-0.3.1 SPDX tag
Date:   Mon,  3 Oct 2022 09:58:49 -0700
Message-Id: <20221003165849.1658170-3-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221003165849.1658170-1-mcgrof@kernel.org>
References: <20221003165849.1658170-1-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: Luis Chamberlain <mcgrof@infradead.org>
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Two selftests drivers exist under the copyleft-next license.
These drivers were added prior to SPDX practice taking full swing
in the kernel. Now that we have an SPDX tag for copyleft-next-0.3.1
documented, embrace it and remove the boiler plate.

Cc: Goldwyn Rodrigues <rgoldwyn@suse.com>
Cc: Kuno Woudt <kuno@frob.nl>
Cc: Richard Fontana <fontana@sharpeleven.org>
Cc: copyleft-next@lists.fedorahosted.org
Cc: Ciaran Farrell <Ciaran.Farrell@suse.com>
Cc: Christopher De Nicolo <Christopher.DeNicolo@suse.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thorsten Leemhuis <linux@leemhuis.info>
Cc: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 lib/test_kmod.c                          | 12 +-----------
 lib/test_sysctl.c                        | 12 +-----------
 tools/testing/selftests/kmod/kmod.sh     | 13 +------------
 tools/testing/selftests/sysctl/sysctl.sh | 12 +-----------
 4 files changed, 4 insertions(+), 45 deletions(-)

diff --git a/lib/test_kmod.c b/lib/test_kmod.c
index cb800b1d0d99..6423df9fa8dd 100644
--- a/lib/test_kmod.c
+++ b/lib/test_kmod.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR copyleft-next-0.3.1
 /*
  * kmod stress test driver
  *
  * Copyright (C) 2017 Luis R. Rodriguez <mcgrof@kernel.org>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the Free
- * Software Foundation; either version 2 of the License, or at your option any
- * later version; or, when distributed separately from the Linux kernel or
- * when incorporated into other software packages, subject to the following
- * license:
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of copyleft-next (version 0.3.1 or later) as published
- * at http://copyleft-next.org/.
  */
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
diff --git a/lib/test_sysctl.c b/lib/test_sysctl.c
index 9a564971f539..e2a816d85ea2 100644
--- a/lib/test_sysctl.c
+++ b/lib/test_sysctl.c
@@ -1,18 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR copyleft-next-0.3.1
 /*
  * proc sysctl test driver
  *
  * Copyright (C) 2017 Luis R. Rodriguez <mcgrof@kernel.org>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the Free
- * Software Foundation; either version 2 of the License, or at your option any
- * later version; or, when distributed separately from the Linux kernel or
- * when incorporated into other software packages, subject to the following
- * license:
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of copyleft-next (version 0.3.1 or later) as published
- * at http://copyleft-next.org/.
  */
 
 /*
diff --git a/tools/testing/selftests/kmod/kmod.sh b/tools/testing/selftests/kmod/kmod.sh
index afd42387e8b2..7189715d7960 100755
--- a/tools/testing/selftests/kmod/kmod.sh
+++ b/tools/testing/selftests/kmod/kmod.sh
@@ -1,18 +1,7 @@
 #!/bin/bash
-#
+# SPDX-License-Identifier: GPL-2.0-or-later OR copyleft-next-0.3.1
 # Copyright (C) 2017 Luis R. Rodriguez <mcgrof@kernel.org>
 #
-# This program is free software; you can redistribute it and/or modify it
-# under the terms of the GNU General Public License as published by the Free
-# Software Foundation; either version 2 of the License, or at your option any
-# later version; or, when distributed separately from the Linux kernel or
-# when incorporated into other software packages, subject to the following
-# license:
-#
-# This program is free software; you can redistribute it and/or modify it
-# under the terms of copyleft-next (version 0.3.1 or later) as published
-# at http://copyleft-next.org/.
-
 # This is a stress test script for kmod, the kernel module loader. It uses
 # test_kmod which exposes a series of knobs for the API for us so we can
 # tweak each test in userspace rather than in kernelspace.
diff --git a/tools/testing/selftests/sysctl/sysctl.sh b/tools/testing/selftests/sysctl/sysctl.sh
index f50778a3d744..bfc54b422f25 100755
--- a/tools/testing/selftests/sysctl/sysctl.sh
+++ b/tools/testing/selftests/sysctl/sysctl.sh
@@ -1,16 +1,6 @@
 #!/bin/bash
+# SPDX-License-Identifier: GPL-2.0-or-later OR copyleft-next-0.3.1
 # Copyright (C) 2017 Luis R. Rodriguez <mcgrof@kernel.org>
-#
-# This program is free software; you can redistribute it and/or modify it
-# under the terms of the GNU General Public License as published by the Free
-# Software Foundation; either version 2 of the License, or at your option any
-# later version; or, when distributed separately from the Linux kernel or
-# when incorporated into other software packages, subject to the following
-# license:
-#
-# This program is free software; you can redistribute it and/or modify it
-# under the terms of copyleft-next (version 0.3.1 or later) as published
-# at http://copyleft-next.org/.
 
 # This performs a series tests against the proc sysctl interface.
 
-- 
2.35.1

