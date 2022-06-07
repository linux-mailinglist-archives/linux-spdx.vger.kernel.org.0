Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF2BD5400CA
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234779AbiFGOLY (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245142AbiFGOLW (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:22 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B85EEA0057
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:19 -0700 (PDT)
Message-ID: <20220607131510.769569195@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611078;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=1LW5nr1z2X1wvTNBXrWgfdO4zqv7apM0lUxVmP7pSiY=;
        b=kjYTdIXx907j7AwFVoI/3cy6K0XqyzjYpSj2wOdlhtpyhCfnsyiUygAG1I45Msdn95xHWb
        DsiJD4OT6G+jEA5oIpexrVd7NgG23QMOKHHTUAWNOePB3HVHRAUhEiQg0u51aSORC+Chrv
        md0LclMFi0waMcdtCHl0cGWeK6Sq71ulYUg2kmsO9Kmpd/FPGhEW0aeqI4vk5CfSpbM8k6
        fgfXVnYaQ0fmSRgvufAWyj+ZQolgG/Y2k4O2Vay+OT+p2Kx/g5Xbak5CFIW0yBKoalVxQv
        dI4ePYqrAG82wEBwIrZm955mPTUxXJPj3w82cUBbE1IJ2/eHCWn7dbBET8dymA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611078;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=1LW5nr1z2X1wvTNBXrWgfdO4zqv7apM0lUxVmP7pSiY=;
        b=0Wjuwlown1bOvt+6OgkXsnn9YJXLGWkXnvsH7LFkqMRFixHK+0npTNCenG0RZzETNLRy0t
        IxtPVyLrY9oQVhBQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 07/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_133.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:18 +0200 (CEST)
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
Reviewed-by: Allison Randal <allison@lohutok.net>
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

