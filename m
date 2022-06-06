Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0063553EF3C
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233048AbiFFULC (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233274AbiFFUKw (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:52 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FE7113393F
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:46 -0700 (PDT)
Message-ID: <20220606200811.131052922@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546245;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=5PKgE3epVqsA6O4vqE5g0qEkN3AlD3j8+yN3Z9duOag=;
        b=RqMrVtfBYipgKYyGuHNROTW4/xsnhutos8umN/ePNuCK5mZ+m3acEjooAhLq3ahdRTvu90
        T1IOXP0qVfil0wc1XkRjrQOw/T1KODr9QJvWDMsk2lIhSsi/MXxCchnqUo3STOTGqekgxv
        zVDd6XiqywspcG1l8k6GjbxlTWWnS56Q6O5dRBHugaOm4S0aXIKTU364MxzCnPOGRg2G/f
        PdVH0MZh7bLVVgk7eZYmZSiR5w043/ZyrP14sGRwE7LxBFBQ5cjYrguvWPuc3YRTW8Cw6y
        G6Qcc5SCFFDpiDWhqK9DNfcxUgS9EuTCsVoU5xRtQKP/F6bQ6fNMpYh2i7Ivpw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546245;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=5PKgE3epVqsA6O4vqE5g0qEkN3AlD3j8+yN3Z9duOag=;
        b=bMn3Tqrgt+k/SqY/dtG73ePhM+BDjabouICsx+8swMU5VkvTQg8iRzQSwzIPT3nfGtqF15
        L8UTYYVdTqWU60CQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 18/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_320.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:44 +0200 (CEST)
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
    as is without any warranty of any kind whether express or implied
    without even the implied warranty of merchantability or fitness for a
    particular purpose see the gnu general public license for more details

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/arm/mach-omap1/timer.c             |   10 +---------
 arch/arm/mach-omap2/display.c           |   10 +---------
 arch/arm/mach-omap2/omap_opp_data.h     |   10 +---------
 arch/arm/mach-omap2/opp3xxx_data.c      |   10 +---------
 arch/arm/mach-omap2/opp4xxx_data.c      |   10 +---------
 arch/arm/mach-versatile/spc.c           |   10 +---------
 drivers/bus/omap_l3_noc.c               |   10 +---------
 drivers/bus/omap_l3_noc.h               |   10 +---------
 drivers/clk/keystone/sci-clk.c          |   10 +---------
 drivers/clk/ti/apll.c                   |   10 +---------
 drivers/clk/ti/autoidle.c               |   10 +---------
 drivers/clk/ti/clk-dra7-atl.c           |   10 +---------
 drivers/clk/ti/clk.c                    |   10 +---------
 drivers/clk/ti/clkctrl.c                |   10 +---------
 drivers/clk/ti/clkt_dflt.c              |   10 +---------
 drivers/clk/ti/clockdomain.c            |   10 +---------
 drivers/clk/ti/composite.c              |   10 +---------
 drivers/clk/ti/divider.c                |   10 +---------
 drivers/clk/ti/dpll.c                   |   10 +---------
 drivers/clk/ti/fixed-factor.c           |   10 +---------
 drivers/clk/ti/gate.c                   |   10 +---------
 drivers/clk/ti/interface.c              |   10 +---------
 drivers/clk/ti/mux.c                    |   10 +---------
 drivers/cpufreq/scpi-cpufreq.c          |   10 +---------
 drivers/input/misc/palmas-pwrbutton.c   |   10 +---------
 drivers/input/misc/tps65218-pwrbutton.c |   10 +---------
 drivers/misc/sram-exec.c                |   10 +---------
 drivers/power/supply/cpcap-battery.c    |   10 +---------
 drivers/regulator/ti-abb-regulator.c    |   10 +---------
 drivers/reset/reset-ti-sci.c            |   10 +---------
 drivers/reset/reset-ti-syscon.c         |   10 +---------
 drivers/thermal/hisi_thermal.c          |   10 +---------
 include/dt-bindings/clock/ti-dra7-atl.h |   10 +---------
 include/dt-bindings/pinctrl/hisi.h      |   10 +---------
 include/dt-bindings/pinctrl/keystone.h  |   10 +---------
 include/linux/clk/ti.h                  |   10 +---------
 include/linux/pm_wakeirq.h              |   14 ++------------
 include/linux/soc/ti/ti-msgmgr.h        |   10 +---------
 38 files changed, 39 insertions(+), 345 deletions(-)

--- a/arch/arm/mach-omap1/timer.c
+++ b/arch/arm/mach-omap1/timer.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP1 Dual-Mode Timers - platform device registration
  *
@@ -9,15 +10,6 @@
  * Copyright (C) 2011 Texas Instruments Incorporated - https://www.ti.com/
  * Tarun Kanti DebBarma <tarun.kanti@ti.com>
  * Thara Gopinath <thara@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk.h>
--- a/arch/arm/mach-omap2/display.c
+++ b/arch/arm/mach-omap2/display.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP2plus display device setup / initialization.
  *
  * Copyright (C) 2010 Texas Instruments Incorporated - https://www.ti.com/
  *	Senthilvadivu Guruswamy
  *	Sumit Semwal
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/string.h>
--- a/arch/arm/mach-omap2/omap_opp_data.h
+++ b/arch/arm/mach-omap2/omap_opp_data.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * OMAP SoC specific OPP Data helpers
  *
@@ -6,15 +7,6 @@
  *	Kevin Hilman
  * Copyright (C) 2010 Nokia Corporation.
  *      Eduardo Valentin
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef __ARCH_ARM_MACH_OMAP2_OMAP_OPP_DATA_H
 #define __ARCH_ARM_MACH_OMAP2_OMAP_OPP_DATA_H
--- a/arch/arm/mach-omap2/opp3xxx_data.c
+++ b/arch/arm/mach-omap2/opp3xxx_data.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP3 OPP table definitions.
  *
@@ -7,15 +8,6 @@
  * Copyright (C) 2010-2011 Nokia Corporation.
  *      Eduardo Valentin
  *      Paul Walmsley
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/module.h>
 
--- a/arch/arm/mach-omap2/opp4xxx_data.c
+++ b/arch/arm/mach-omap2/opp4xxx_data.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP4 OPP table definitions.
  *
@@ -8,15 +9,6 @@
  * Copyright (C) 2010-2011 Nokia Corporation.
  *      Eduardo Valentin
  *      Paul Walmsley
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/module.h>
 
--- a/arch/arm/mach-versatile/spc.c
+++ b/arch/arm/mach-versatile/spc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Versatile Express Serial Power Controller (SPC) support
  *
@@ -6,15 +7,6 @@
  * Authors: Sudeep KarkadaNagesha <sudeep.karkadanagesha@arm.com>
  *          Achin Gupta           <achin.gupta@arm.com>
  *          Lorenzo Pieralisi     <lorenzo.pieralisi@arm.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/bus/omap_l3_noc.c
+++ b/drivers/bus/omap_l3_noc.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP L3 Interconnect error handling driver
  *
  * Copyright (C) 2011-2015 Texas Instruments Incorporated - http://www.ti.com/
  *	Santosh Shilimkar <santosh.shilimkar@ti.com>
  *	Sricharan <r.sricharan@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/init.h>
 #include <linux/interrupt.h>
--- a/drivers/bus/omap_l3_noc.h
+++ b/drivers/bus/omap_l3_noc.h
@@ -1,18 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * OMAP L3 Interconnect  error handling driver header
  *
  * Copyright (C) 2011-2015 Texas Instruments Incorporated - http://www.ti.com/
  *	Santosh Shilimkar <santosh.shilimkar@ti.com>
  *	sricharan <r.sricharan@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef __OMAP_L3_NOC_H
 #define __OMAP_L3_NOC_H
--- a/drivers/clk/keystone/sci-clk.c
+++ b/drivers/clk/keystone/sci-clk.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SCI Clock driver for keystone based devices
  *
  * Copyright (C) 2015-2016 Texas Instruments Incorporated - https://www.ti.com/
  *	Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/clk-provider.h>
 #include <linux/err.h>
--- a/drivers/clk/ti/apll.c
+++ b/drivers/clk/ti/apll.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP APLL clock support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * J Keerthy <j-keerthy@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/ti/autoidle.c
+++ b/drivers/clk/ti/autoidle.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI clock autoidle support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/clk-dra7-atl.c
+++ b/drivers/clk/ti/clk-dra7-atl.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * DRA7 ATL (Audio Tracking Logic) clock driver
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Peter Ujfalusi <peter.ujfalusi@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/init.h>
--- a/drivers/clk/ti/clk.c
+++ b/drivers/clk/ti/clk.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI clock support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/ti/clkctrl.c
+++ b/drivers/clk/ti/clkctrl.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP clkctrl clock support
  *
  * Copyright (C) 2017 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/clkt_dflt.c
+++ b/drivers/clk/ti/clkt_dflt.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Default clock type
  *
@@ -8,15 +9,6 @@
  * Richard Woodruff <r-woodruff2@ti.com>
  * Paul Walmsley
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/ti/clockdomain.c
+++ b/drivers/clk/ti/clockdomain.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP clockdomain support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/ti/composite.c
+++ b/drivers/clk/ti/composite.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI composite clock support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/divider.c
+++ b/drivers/clk/ti/divider.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI Divider Clock
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/dpll.c
+++ b/drivers/clk/ti/dpll.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP DPLL clock support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/ti/fixed-factor.c
+++ b/drivers/clk/ti/fixed-factor.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI Fixed Factor Clock
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/gate.c
+++ b/drivers/clk/ti/gate.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP gate clock support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/interface.c
+++ b/drivers/clk/ti/interface.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP interface clock support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/ti/mux.c
+++ b/drivers/clk/ti/mux.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI Multiplexer Clock
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Tero Kristo <t-kristo@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/cpufreq/scpi-cpufreq.c
+++ b/drivers/cpufreq/scpi-cpufreq.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * System Control and Power Interface (SCPI) based CPUFreq Interface driver
  *
  * Copyright (C) 2015 ARM Ltd.
  * Sudeep Holla <sudeep.holla@arm.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
--- a/drivers/input/misc/palmas-pwrbutton.c
+++ b/drivers/input/misc/palmas-pwrbutton.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Texas Instruments' Palmas Power Button Input Driver
  *
  * Copyright (C) 2012-2014 Texas Instruments Incorporated - http://www.ti.com/
  *	Girish S Ghongdemath
  *	Nishanth Menon
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/bitfield.h>
--- a/drivers/input/misc/tps65218-pwrbutton.c
+++ b/drivers/input/misc/tps65218-pwrbutton.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Texas Instruments' TPS65217 and TPS65218 Power Button Input Driver
  *
  * Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/
  * Author: Felipe Balbi <balbi@ti.com>
  * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/init.h>
--- a/drivers/misc/sram-exec.c
+++ b/drivers/misc/sram-exec.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SRAM protect-exec region helper functions
  *
  * Copyright (C) 2017 Texas Instruments Incorporated - https://www.ti.com/
  *	Dave Gerlach
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/device.h>
--- a/drivers/power/supply/cpcap-battery.c
+++ b/drivers/power/supply/cpcap-battery.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Battery driver for CPCAP PMIC
  *
@@ -7,15 +8,6 @@
  * drivers:
  *
  * Copyright (C) 2009-2010 Motorola, Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
-
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/delay.h>
--- a/drivers/regulator/ti-abb-regulator.c
+++ b/drivers/regulator/ti-abb-regulator.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Texas Instruments SoC Adaptive Body Bias(ABB) Regulator
  *
@@ -7,15 +8,6 @@
  * Copyright (C) 2012-2013 Texas Instruments, Inc.
  * Andrii Tseglytskyi <andrii.tseglytskyi@ti.com>
  * Nishanth Menon <nm@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/clk.h>
 #include <linux/delay.h>
--- a/drivers/reset/reset-ti-sci.c
+++ b/drivers/reset/reset-ti-sci.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Texas Instrument's System Control Interface (TI-SCI) reset driver
  *
  * Copyright (C) 2015-2017 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/idr.h>
--- a/drivers/reset/reset-ti-syscon.c
+++ b/drivers/reset/reset-ti-syscon.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI SYSCON regmap reset driver
  *
  * Copyright (C) 2015-2016 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *	Suman Anna <afd@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/mfd/syscon.h>
--- a/drivers/thermal/hisi_thermal.c
+++ b/drivers/thermal/hisi_thermal.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * HiSilicon thermal sensor driver
  *
@@ -6,15 +7,6 @@
  *
  * Xinwei Kong <kong.kongxinwei@hisilicon.com>
  * Leo Yan <leo.yan@linaro.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #include <linux/cpufreq.h>
--- a/include/dt-bindings/clock/ti-dra7-atl.h
+++ b/include/dt-bindings/clock/ti-dra7-atl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This header provides constants for DRA7 ATL (Audio Tracking Logic)
  *
@@ -6,15 +7,6 @@
  * Copyright (C) 2013 Texas Instruments, Inc.
  *
  * Peter Ujfalusi <peter.ujfalusi@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _DT_BINDINGS_CLK_DRA7_ATL_H
--- a/include/dt-bindings/pinctrl/hisi.h
+++ b/include/dt-bindings/pinctrl/hisi.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This header provides constants for hisilicon pinctrl bindings.
  *
  * Copyright (c) 2015 HiSilicon Limited.
  * Copyright (c) 2015 Linaro Limited.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #ifndef _DT_BINDINGS_PINCTRL_HISI_H
--- a/include/dt-bindings/pinctrl/keystone.h
+++ b/include/dt-bindings/pinctrl/keystone.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This header provides constants for Keystone pinctrl bindings.
  *
  * Copyright (C) 2016 Texas Instruments Incorporated - http://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _DT_BINDINGS_PINCTRL_KEYSTONE_H
--- a/include/linux/clk/ti.h
+++ b/include/linux/clk/ti.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI clock drivers support
  *
  * Copyright (C) 2013 Texas Instruments, Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef __LINUX_CLK_TI_H__
 #define __LINUX_CLK_TI_H__
--- a/include/linux/pm_wakeirq.h
+++ b/include/linux/pm_wakeirq.h
@@ -1,15 +1,5 @@
-/*
- * pm_wakeirq.h - Device wakeirq helper functions
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* pm_wakeirq.h - Device wakeirq helper functions */
 
 #ifndef _LINUX_PM_WAKEIRQ_H
 #define _LINUX_PM_WAKEIRQ_H
--- a/include/linux/soc/ti/ti-msgmgr.h
+++ b/include/linux/soc/ti/ti-msgmgr.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Texas Instruments' Message Manager
  *
  * Copyright (C) 2015-2022 Texas Instruments Incorporated - https://www.ti.com/
  *	Nishanth Menon
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef TI_MSGMGR_H

