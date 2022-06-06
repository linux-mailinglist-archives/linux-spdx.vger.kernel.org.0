Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B33CE53EF42
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232992AbiFFULL (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233268AbiFFULB (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:11:01 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7281712DBC0
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:55 -0700 (PDT)
Message-ID: <20220606200811.476746257@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546254;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=DJTqjW3Husx7mb8buz6vUc61wdNo/i3bgAdE8qnEcoI=;
        b=qx9qqUnRGBMn7RGbcW0GKx2S2L+9hgoQin00coeTqvBdZ+dkumVCETMFmmlkBSAQth9Kff
        PGEt8yjOgFGTZljCJwRkEn/6C6PimatNXTtwGu982TcYkeWiJP5MtDDe7DdaxDZzgtJa+m
        7C7M42AWLOGVCaZiZWtlQpZGoCLX7cJNZGARc3/UEohwRV7TyU6nYNekuJQzPKGtiOGLnA
        38lBt3MfCKXAM9ViLut/6+C8o6XdD+6tKvKq33BVNAZGCRKoTQ117R5WOHR+8zg0i36JYA
        vvFuKVXdfr07QOHk9oAJwCE+AbAlSe3X2nf1p5/g8xRfqkmwsLKZzTysu02k+Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546254;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=DJTqjW3Husx7mb8buz6vUc61wdNo/i3bgAdE8qnEcoI=;
        b=j82mBQgCThc07JKZbGqqx0y8RGHEopncmMh+ubYwiLXMNgtzKFPOs6QpuSi6HUUi0WQxm6
        11V0LUtFFduyvwDA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 24/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_406.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:53 +0200 (CEST)
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

