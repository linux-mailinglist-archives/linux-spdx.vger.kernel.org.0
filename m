Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 405EC5400DE
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245161AbiFGOLr (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245164AbiFGOLl (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:41 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBA17A7E3C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:40 -0700 (PDT)
Message-ID: <20220607131511.751094871@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611099;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=hsm0nm2uxDd15sNJilzZyLzUStZruLIqDU6OF53yDCY=;
        b=a9Ci0tMtmmUZFnePncI0QH7uvzS5GaQs5AKrqW/QtZeBy4Bsp4lXBW9PGHwQEEVQSOh2+Q
        LEstXqIGonU6FLlmNH8meJfN/ThlEQkv5Vus4K9KEx5oUD3EH+mUgciSZw7J52Qlti7n9l
        BjRStNREIdBA1c+zfiRmj5BZsY82hma1t0QEwvngsg3w3Jj4cKM6Jy1hYMPtaqR2l2V+7c
        fpLkBJKXQvUxA6IFa+KpYwYynKvHnFYf05qUJ9sH5jLRTapxCrC8brntGdOePNHztr9rN1
        yFErNjSgaQaC0D5EoKIFTBEzhhkndBbbj/bo8pi2FaNv81wOxE+PJHDMdxvl1g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611099;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=hsm0nm2uxDd15sNJilzZyLzUStZruLIqDU6OF53yDCY=;
        b=i1KIud6V4isA7by7/7ZgyyqU55HbQ4rDAimbt4G13RWhmv6CQSlos2wNoTKfH3Vd0P6dxS
        zbND/mKzKusW8bBA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 24/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_406.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:39 +0200 (CEST)
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

    this file is licensed under the term of the gnu general public license
    version 2 the program licensed as is without any warranty of any kind
    whether express or implied

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 drivers/dma/ppc4xx/dma.h |    5 +----
 drivers/dma/ppc4xx/xor.h |    5 +----
 2 files changed, 2 insertions(+), 8 deletions(-)

--- a/drivers/dma/ppc4xx/dma.h
+++ b/drivers/dma/ppc4xx/dma.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * 440SPe's DMA engines support header file
  *
  * 2006-2009 (C) DENX Software Engineering.
  *
  * Author: Yuri Tikhonov <yur@emcraft.com>
- *
- * This file is licensed under the term of  the GNU General Public License
- * version 2. The program licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #ifndef	_PPC440SPE_DMA_H
--- a/drivers/dma/ppc4xx/xor.h
+++ b/drivers/dma/ppc4xx/xor.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * 440SPe's XOR engines support header file
  *
  * 2006-2009 (C) DENX Software Engineering.
  *
  * Author: Yuri Tikhonov <yur@emcraft.com>
- *
- * This file is licensed under the term of  the GNU General Public License
- * version 2. The program licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #ifndef _PPC440SPE_XOR_H

