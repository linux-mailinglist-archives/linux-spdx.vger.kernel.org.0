Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96E4A53EF3A
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233213AbiFFUK7 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233462AbiFFUKn (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:43 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCEFD12E834
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:41 -0700 (PDT)
Message-ID: <20220606200810.959963467@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546240;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=fzHUo3lAMinA0uB/R/pw3jANXT9Sw/yEuVVlgTBNDfs=;
        b=3kDCyuJf/S9Ry5Q8ujpDll1eEizXulGMx01FXRjLaAtz9JPeTOTMlYs13zBPKgQo62FaVl
        +u1bnMzR3jPL12FfoUVsCp5eYW9vBAoZ5aQLkN4UmZLpezQZQsbA1UU8xdlIbgjC+BGGql
        tgOCqVmHJk7UiK7GCzDU5rSW+ZsmvS0xh5FCutgjVwSbjv9Zk4ZXCykJ+Qtb5n87nlFijT
        rgjTql46OMPIr0UyXrZiabH741qARDZz1l4570ZKNZguzCRKe9KmIE0cgH6eEqlY+eF0xz
        dPmQv/d7FSgBqIvwyL52HijsTNL7rIcah+piPtB5GGGppv00zCaRoFDQX30MMQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546240;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=fzHUo3lAMinA0uB/R/pw3jANXT9Sw/yEuVVlgTBNDfs=;
        b=B+hlsnIxZvbqBcv4DYffjDRV6QtfZMVyrTtAeJ/MAXzZjeWewkiOQR+PZkmXc6mq18/xL8
        xNtpC/yrtUUz6YAw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 15/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_298.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:39 +0200 (CEST)
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

    this package is free software you can redistribute it and/or modify it
    under the terms of the gnu general public license version 2 as
    published by the free software foundation  this package is provided as
    is and without any express or implied warranties including without
    limitation the implied warranties of merchantibility and fitness for a
    particular purpose

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/arm/mach-omap1/board-sx1.h |    9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

--- a/arch/arm/mach-omap1/board-sx1.h
+++ b/arch/arm/mach-omap1/board-sx1.h
@@ -1,15 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Siemens SX1 board definitions
  *
  * Copyright: Vovan888 at gmail com
- *
- * This package is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * THIS PACKAGE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
- * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
- * WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
  */
 
 #ifndef __ASM_ARCH_SX1_I2C_CHIPS_H

