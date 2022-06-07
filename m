Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A3F35400D5
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245141AbiFGOLd (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245142AbiFGOLb (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:31 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC4549B184
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:30 -0700 (PDT)
Message-ID: <20220607131511.293387284@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611089;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=+8Dpk93BC18CuyRJMsWNjP2xTwtqtd3TbK7/OkmJ+0E=;
        b=wET5MiSMCXY9vK4Ex+sIOPPKkxdaMlO8vqWKonqYOFmK70hVIS/aBm/QPNY/4tEfwu57FH
        vMuY6gPgWfkFhpl3C09Wbz2KBcXtpGylBkddu09y8UBB/sDuf/IcwSPzeUfbaoynD6Gu5w
        SaNZGjo+/mzhC2+Pq6fjsSc2vwFcQzqfu6nuYj2XdoUZkLkYaP/FcBNNqhMeK8mScoxdOm
        hwfUxSlc0NwujePHi6a4QLY7U0j7IOdwW8yEMDfSXeP0LWx2Hfwp8ThwhfW3UFdsc6pmc8
        eSNloQEIOmd+dMGPxdR6YUDSBGORFYbi1hQ2im9KdcoIEOGbo/25kl8ShYQnYg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611089;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=+8Dpk93BC18CuyRJMsWNjP2xTwtqtd3TbK7/OkmJ+0E=;
        b=4uiEricLkd6UsBPQL+48V4uWstfUZWzzwA1rNHyRVxSfY9548R/1z8bofNDnlIr3tKg5Az
        EirP6fodrh87RRAA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 16/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_298.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:29 +0200 (CEST)
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
Reviewed-by: Allison Randal <allison@lohutok.net>
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

