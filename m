Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7371253EF3D
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233113AbiFFULD (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233532AbiFFUKx (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:53 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F76E1339C7
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:49 -0700 (PDT)
Message-ID: <20220606200811.246246983@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546248;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=/efnrK+je69nAAq+YRtnI5YINeBdfR6XuqAoZYwMQsk=;
        b=0QVgP1RfbA+7JaC1FosWAViRIKkrBP2DGPoYmdvUJSG4MHL/ItjIZmwUt2eV4DQWR4Zgw8
        1IEgqz7tlG9XM/9g4+K86kmXAB9IN8mBjlpHOTcmNSpUVjfQm/pPYNC0z/56DzcCWxwAMQ
        AyXmi/FUnFHbUFEm/VnT0ECTuMAenp+eaZNgra9qGx37z4xZ+cTsWs8bUwcKnz0dDCLVNv
        dciA2XtMeJzWVicXYXSHU1gqG+7nGpMInJUyuPqsnNGSOOHWX8d22km781CdUKqd61/uEs
        WmAgsRbYD6nj7iMCLQ+ZVNACz0/WXAGaeqwAwW6AeQdtJCAqbgWox4QQ4kKWKw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546248;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=/efnrK+je69nAAq+YRtnI5YINeBdfR6XuqAoZYwMQsk=;
        b=A0bNsqDxSyDub9XzYW9OWMoYp0U9toWR5LPil9iu3VWEeY0NJ23bzwAinrYlwvYyWm+gnu
        tgco31HxQwcy0QCQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 20/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_385.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:47 +0200 (CEST)
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

