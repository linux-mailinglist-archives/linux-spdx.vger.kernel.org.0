Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5514B5400DD
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245158AbiFGOLq (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245161AbiFGOLk (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:40 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A91AC03BC
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:39 -0700 (PDT)
Message-ID: <20220607131511.694624495@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611098;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=kFp5Z3+BNeo9ESh+CpZ6qpG/IKZFFQjvwfWXmtXjGpo=;
        b=opXMUyZerOvJYXuOjILPEboRqTXFOLtTYNAL1w0koXHrB51/5S90Uc71efnkw1KAbzRyqG
        aUAK4KUQZtn+1Md/zJSHooYj79a+l8mq1AvZE4RHCrgKxkvGs6bEX84Z4icaZtjSK/h+z6
        O1DQXBfu+zcCdLZ2J/871aUoibySJWlwNFTxcSHXKsfn8p13oz0BkXQvFWcoHzVsy1Jzmz
        vxWWCLxlea0yiWUJC6cBs9zm5KbQ/MyLVL3p3BH1JLyj9+MPCiVnxzd2szM+tiXO8ZhdHo
        j56eGvrb0HIxHx1tdIrJjv6hPB3nj6KLworaIFpb6TggwnSiCzleTcA2jtVf7w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611098;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=kFp5Z3+BNeo9ESh+CpZ6qpG/IKZFFQjvwfWXmtXjGpo=;
        b=Ccykn0hoQuzK1P2D8BM/u98gbWfIaAwPf/t6p8X1rW1C9rLnQGHgvfWsGkwAUC1tk7Y2cn
        8lvLfDmNtFiKmxDQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 23/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_398.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:37 +0200 (CEST)
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

    this file is licensed under the terms of the gnu general public
    license version 2 this program as licensed as is without any warranty
    of any kind whether express or implied

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 arch/powerpc/kernel/kgdb.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

--- a/arch/powerpc/kernel/kgdb.c
+++ b/arch/powerpc/kernel/kgdb.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * PowerPC backend to the KGDB stub.
  *
@@ -8,10 +9,6 @@
  * PPC32 support restored by Vitaly Wool <vwool@ru.mvista.com> and
  * Sergei Shtylyov <sshtylyov@ru.mvista.com>
  * Copyright (C) 2007-2008 Wind River Systems, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program as licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/kernel.h>

