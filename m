Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4740D5400C5
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245133AbiFGOLO (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245128AbiFGOLN (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:13 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECFFDA0057
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:12 -0700 (PDT)
Message-ID: <20220607131510.418530565@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611071;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=xolFozufazfGA2pjcGmm8z4MM/V7X1RHyFRIwQZ0J14=;
        b=uappLB9C77OqxbyLvLB6n5/8ln93CTlQa+U/ACb6pNmi9z7RJi+4jUyHU1A1ZGql0qOXGX
        dC/IgPHbJoxUSFJn/8Bh9+7+Uiy0zLMByxuMRREpztXgI6ymV0u4+lzL2tjAAQUePvHMhJ
        3OMvfPQVG60EZSH75gld8PMdCNfhSF0BI+hV2pa+EZbTwBF8q4WdbvbA1UduC9tv3+dxGF
        tzi8RYhFPUT9di6H5k8j0Yqoq1Pm/sZda2yoF+ec1G70e55SCctHbqDS2DLX5Y7IV04Dde
        SPqg3PJ3NPnQRw9/MbGli8yQ8QU98e8nt7/dgQUXslRq+uX13vbHT4ZazMw/dA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611071;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=xolFozufazfGA2pjcGmm8z4MM/V7X1RHyFRIwQZ0J14=;
        b=106Q6fNBU6SrFshMDpe15W+gwbfou8I8qA9RZUM9jUb49gb0Ti+QV5O0+ZjZ+IE12ki3ua
        7CRyGoZtC3pxkMCQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 01/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_8.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:10 +0200 (CEST)
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

    this program is free software you can redistribute it and/or modify it
    under the terms of the gnu general public license version 2 as
    published by the free software foundation

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 Documentation/driver-api/vfio-mediated-device.rst |    4 +---
 arch/arm/boot/bootp/bootp.lds                     |    5 +----
 include/linux/input/elan-i2c-ids.h                |    5 +----
 3 files changed, 3 insertions(+), 11 deletions(-)

--- a/Documentation/driver-api/vfio-mediated-device.rst
+++ b/Documentation/driver-api/vfio-mediated-device.rst
@@ -1,3 +1,4 @@
+.. SPDX-License-Identifier: GPL-2.0-only
 .. include:: <isonum.txt>
 
 =====================
@@ -8,9 +9,6 @@ VFIO Mediated devices
 :Author: Neo Jia <cjia@nvidia.com>
 :Author: Kirti Wankhede <kwankhede@nvidia.com>
 
-This program is free software; you can redistribute it and/or modify
-it under the terms of the GNU General Public License version 2 as
-published by the Free Software Foundation.
 
 
 Virtual Function I/O (VFIO) Mediated devices[1]
--- a/arch/arm/boot/bootp/bootp.lds
+++ b/arch/arm/boot/bootp/bootp.lds
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  *  linux/arch/arm/boot/bootp/bootp.lds
  *
  *  Copyright (C) 2000-2002 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 OUTPUT_ARCH(arm)
 ENTRY(_start)
--- a/include/linux/input/elan-i2c-ids.h
+++ b/include/linux/input/elan-i2c-ids.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Elan I2C/SMBus Touchpad device whitelist
  *
@@ -11,10 +12,6 @@
  * copyright (c) 2011-2012 Cypress Semiconductor, Inc.
  * copyright (c) 2011-2012 Google, Inc.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License version 2 as published
- * by the Free Software Foundation.
- *
  * Trademarks are the property of their respective owners.
  */
 

