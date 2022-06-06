Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2875153EF30
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233257AbiFFUKk (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233253AbiFFUK2 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:28 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00058132A11
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:25 -0700 (PDT)
Message-ID: <20220606200810.359517821@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546224;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=7rhHiFzrJJ+zYbn88JXyy8iV4BFEHICioAGA1/y+Myg=;
        b=eJtnua/yrgsfGB6/gWVIj7+nnCtTqKpVo2h0oLQcCh9TmX813mVvBy4gdO9EhXsAsRkYYq
        ++dIVgozgZHRM4ERukzktwAXG5eCma2ZD9cEY0a/fAagkbIhzGrJQXeCVyJm+LD0a4DylE
        e2LN0fQV74wkhyaaPvb5Z0pPjDca2A22nI1j4Oy/dZUtSoOTOksynTHRjUcJtDpy2KSJV/
        pUgnyNMHm0NCGTJY6dV3leCGiGbIoObRD1k4R8EBlpv3cUSMAO1EWtung91SOdDhyG64DJ
        WZ8kfoHYbkjVLD7obI3erljcBTRDJLtdUUtIKDyvV6ec0JquBV8u0u+0VwqJLQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546224;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=7rhHiFzrJJ+zYbn88JXyy8iV4BFEHICioAGA1/y+Myg=;
        b=y8e7d4+AUjm1jibfaSUalpoU1tySL0q38YZemnYgoC/jdNZb5RQ3aaHNRh6fGT3lf2OeqN
        oVs/YEssYUeGJAAg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 05/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_133.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:23 +0200 (CEST)
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
    published by the free software foundation  this program is distributed
    in the hope that it will be useful merchantability or fitness for a
    particular purpose see the gnu general public license for more details

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/arm64/boot/dts/mediatek/mt6755.dtsi |    9 +--------
 arch/arm64/boot/dts/mediatek/mt6795.dtsi |    9 +--------
 arch/arm64/boot/dts/mediatek/mt8173.dtsi |    9 +--------
 include/dt-bindings/power/mt6797-power.h |    9 +--------
 4 files changed, 4 insertions(+), 32 deletions(-)

--- a/arch/arm64/boot/dts/mediatek/mt6755.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6755.dtsi
@@ -1,14 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2016 MediaTek Inc.
  * Author: Mars.C <mars.cheng@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
--- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
@@ -1,14 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2015 MediaTek Inc.
  * Author: Mars.C <mars.cheng@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1,14 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2014 MediaTek Inc.
  * Author: Eddie Huang <eddie.huang@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <dt-bindings/clock/mt8173-clk.h>
--- a/include/dt-bindings/power/mt6797-power.h
+++ b/include/dt-bindings/power/mt6797-power.h
@@ -1,14 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2017 MediaTek Inc.
  * Author: Mars.C <mars.cheng@mediatek.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _DT_BINDINGS_POWER_MT6797_POWER_H

