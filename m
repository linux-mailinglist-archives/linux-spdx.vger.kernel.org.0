Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D141F5400DA
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245171AbiFGOLl (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245172AbiFGOLi (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:38 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3429A7E3C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:35 -0700 (PDT)
Message-ID: <20220607131511.521850683@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611094;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=5EHXigjvrjjDl2jT0/+rG6IbrXXCmksn697vufQiR0A=;
        b=WufF77eyUxoTWNPc4l3Wx/GbnnHih239arTa0W+4Jwt+Dy9Kl0cW9odoBMSutGon8jlJki
        g5PiCCPWetNUBzVpES8KwMireTJnCv2Aj2aGU+U9zkhKe/zJFVUH7zy4CdNgZzjnOGsn7j
        YaVMbYEv9mpR4KxUrocxZsBWOO1FRPjDlRUKLWGk67piJdxsk2OJfd7zkJxw9sXkYriJR0
        hESj9BhiqB1jTRlkJX3zeJauUNtq6yHIuIFlVoRoy9I36I1AdXvLAJf1o/ADtdfEheShuy
        5Kh1srBJkkLzrnEQKF0XymiRP8lHzL2RZHQ4Iq5DaKAnkHOEeUpLzEh0+VHJmA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611094;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=5EHXigjvrjjDl2jT0/+rG6IbrXXCmksn697vufQiR0A=;
        b=WfqH50f2g9eHq8V0Nq3kLsvS4o+fDup7FNBNMTqx3nmy67vtRsVWK0fcdwiS8ZAbB9oTp4
        y28wRkYqkYeUYrCA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 20/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_385.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:34 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    licensed under the gpl v2

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 arch/sparc/vdso/vdso2c.c                    |    2 +-
 arch/x86/entry/vdso/vdso2c.c                |    2 +-
 scripts/gcc-plugins/latent_entropy_plugin.c |    2 +-
 scripts/gcc-plugins/stackleak_plugin.c      |    2 +-
 scripts/gcc-plugins/structleak_plugin.c     |    2 +-
 tools/power/cpupower/debug/i386/dump_psb.c  |    6 ++----
 6 files changed, 7 insertions(+), 9 deletions(-)

--- a/arch/sparc/vdso/vdso2c.c
+++ b/arch/sparc/vdso/vdso2c.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * vdso2c - A vdso image preparation tool
  * Copyright (c) 2014 Andy Lutomirski and others
- * Licensed under the GPL v2
  *
  * vdso2c requires stripped and unstripped input.  It would be trivial
  * to fully strip the input in here, but, for reasons described below,
--- a/arch/x86/entry/vdso/vdso2c.c
+++ b/arch/x86/entry/vdso/vdso2c.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * vdso2c - A vdso image preparation tool
  * Copyright (c) 2014 Andy Lutomirski and others
- * Licensed under the GPL v2
  *
  * vdso2c requires stripped and unstripped input.  It would be trivial
  * to fully strip the input in here, but, for reasons described below,
--- a/scripts/gcc-plugins/latent_entropy_plugin.c
+++ b/scripts/gcc-plugins/latent_entropy_plugin.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2012-2016 by the PaX Team <pageexec@freemail.hu>
  * Copyright 2016 by Emese Revfy <re.emese@gmail.com>
- * Licensed under the GPL v2
  *
  * Note: the choice of the license means that the compilation process is
  *       NOT 'eligible' as defined by gcc's library exception to the GPL v3,
--- a/scripts/gcc-plugins/stackleak_plugin.c
+++ b/scripts/gcc-plugins/stackleak_plugin.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2011-2017 by the PaX Team <pageexec@freemail.hu>
  * Modified by Alexander Popov <alex.popov@linux.com>
- * Licensed under the GPL v2
  *
  * Note: the choice of the license means that the compilation process is
  * NOT 'eligible' as defined by gcc's library exception to the GPL v3,
--- a/scripts/gcc-plugins/structleak_plugin.c
+++ b/scripts/gcc-plugins/structleak_plugin.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2013-2017 by PaX Team <pageexec@freemail.hu>
- * Licensed under the GPL v2
  *
  * Note: the choice of the license means that the compilation process is
  *       NOT 'eligible' as defined by gcc's library exception to the GPL v3,
--- a/tools/power/cpupower/debug/i386/dump_psb.c
+++ b/tools/power/cpupower/debug/i386/dump_psb.c
@@ -1,7 +1,5 @@
-/*
- * dump_psb. (c) 2004, Dave Jones, Red Hat Inc.
- * Licensed under the GPL v2.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// dump_psb. (c) 2004, Dave Jones, Red Hat Inc.
 
 #include <fcntl.h>
 #include <stdio.h>

