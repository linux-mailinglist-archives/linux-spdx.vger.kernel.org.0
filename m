Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3515400CB
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245138AbiFGOLY (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245140AbiFGOLV (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:21 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47BD1AE458
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:16 -0700 (PDT)
Message-ID: <20220607131510.594097285@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611074;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=StOqgpRSOnZrHRO9rWSc3Hv1sfP4xTiFb/zgRnS1Ryc=;
        b=Y5NGJbZeuX8OxnMyzLkce9TbllYbro+7G7TAHAW1TX5M70KToeYIaIYfeL7us+q2ggTmTl
        Pt6GINOollCpMQr7ZQGNNo0uEJSDI1GJBf3CXQmZ1S+WcES1C7GCIK2JPJckPoESPmGASr
        /fRqFtV3cZsxM57l2DDlUTW6YO4lKNeG+k1aHXA79CUlULvjktxJTsHYFlp6XR7PQ3g3AQ
        J7cVpkTV3hBSbZWp9JIF5/CaGIooV10KVv9bUcfCJW9T9ZT8U+Q+jrBPhq4Y6mpp/PZwNT
        hObVXDAsU6NPDmYM/O0B/9TO+ztNetlS9AklVgaC9Q0emXbMUpI+6SVDx0dRig==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611074;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=StOqgpRSOnZrHRO9rWSc3Hv1sfP4xTiFb/zgRnS1Ryc=;
        b=4bHs1OPG05nXcYfFWeBj9OpFV3GN+y2LR/g/28wGd4+AaGWL4hFrc3sxm54igRciI8mJpW
        mKXPdlEdo23tz1BA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 04/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_56.RULE (part 1)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:14 +0200 (CEST)
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
    license version 2 this program is licensed as is without any warranty
    of any kind whether express or implied

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
V2: Split to overcome list size limits
---
 arch/arm/boot/dts/am33xx.dtsi                             |    5 +----
 arch/arm/boot/dts/am3517.dtsi                             |    5 +----
 arch/arm/boot/dts/am4372.dtsi                             |    5 +----
 arch/arm/boot/dts/artpec6-devboard.dts                    |    9 ++-------
 arch/arm/boot/dts/dm814x.dtsi                             |    6 +-----
 arch/arm/boot/dts/dm816x.dtsi                             |    6 +-----
 arch/arm/boot/dts/dra62x.dtsi                             |    6 +-----
 arch/arm/boot/dts/dra7-dspeve-thermal.dtsi                |    5 +----
 arch/arm/boot/dts/dra7-iva-thermal.dtsi                   |    5 +----
 arch/arm/boot/dts/imx6q-gk802.dts                         |    9 ++-------
 arch/arm/boot/dts/omap2.dtsi                              |    5 +----
 arch/arm/boot/dts/omap2420.dtsi                           |    5 +----
 arch/arm/boot/dts/omap2430.dtsi                           |    5 +----
 arch/arm/boot/dts/omap3-cpu-thermal.dtsi                  |    5 +----
 arch/arm/boot/dts/omap3.dtsi                              |    5 +----
 arch/arm/boot/dts/omap34xx.dtsi                           |    5 +----
 arch/arm/boot/dts/omap36xx.dtsi                           |    5 +----
 arch/arm/boot/dts/omap4-cpu-thermal.dtsi                  |    5 +----
 arch/arm/boot/dts/omap443x.dtsi                           |    5 +----
 arch/arm/boot/dts/omap4460.dtsi                           |    5 +----
 arch/arm/boot/dts/omap5-core-thermal.dtsi                 |    5 +----
 arch/arm/boot/dts/omap5-gpu-thermal.dtsi                  |    5 +----
 arch/arm/boot/dts/orion5x-lacie-d2-network.dts            |    5 +----
 arch/arm/boot/dts/orion5x-lacie-ethernet-disk-mini-v2.dts |    9 ++-------
 arch/arm/boot/dts/orion5x-maxtor-shared-storage-2.dts     |    5 +----
 arch/arm/boot/dts/orion5x-mv88f5181.dtsi                  |    9 ++-------
 arch/arm/boot/dts/orion5x-mv88f5182.dtsi                  |    9 ++-------
 arch/arm/boot/dts/orion5x-netgear-wnr854t.dts             |    9 ++-------
 arch/arm/boot/dts/orion5x-rd88f5182-nas.dts               |    9 ++-------
 arch/arm/boot/dts/orion5x.dtsi                            |    9 ++-------
 arch/arm/include/asm/hardware/cache-aurora-l2.h           |    5 +----
 arch/arm/include/asm/hardware/cache-feroceon-l2.h         |    6 +-----
 arch/arm/include/asm/hardware/cache-tauros2.h             |    5 +----
 arch/arm/mach-davinci/board-da830-evm.c                   |    6 ++----
 arch/arm/mach-davinci/board-da850-evm.c                   |    6 ++----
 arch/arm/mach-davinci/board-dm355-evm.c                   |    6 ++----
 arch/arm/mach-davinci/board-dm355-leopard.c               |    5 +----
 arch/arm/mach-davinci/board-dm644x-evm.c                  |    6 ++----
 arch/arm/mach-davinci/board-dm646x-evm.c                  |    7 +------
 arch/arm/mach-davinci/board-mityomapl138.c                |    5 +----
 arch/arm/mach-davinci/board-neuros-osd2.c                 |    5 +----
 arch/arm/mach-davinci/board-omapl138-hawk.c               |    5 +----
 arch/arm/mach-davinci/common.c                            |    6 ++----
 arch/arm/mach-davinci/common.h                            |    6 ++----
 arch/arm/mach-davinci/cpuidle.h                           |    5 +----
 arch/arm/mach-davinci/cputype.h                           |    6 ++----
 arch/arm/mach-davinci/da830.c                             |    6 ++----
 arch/arm/mach-davinci/da850.c                             |    6 ++----
 arch/arm/mach-davinci/da8xx.h                             |    6 ++----
 arch/arm/mach-davinci/dm355.c                             |    6 ++----
 arch/arm/mach-davinci/dm644x.c                            |    6 ++----
 arch/arm/mach-davinci/dm646x.c                            |    6 ++----
 arch/arm/mach-davinci/hardware.h                          |    6 ++----
 arch/arm/mach-davinci/mux.c                               |    6 ++----
 arch/arm/mach-davinci/mux.h                               |    6 ++----
 arch/arm/mach-davinci/pm_domain.c                         |    5 +----
 arch/arm/mach-davinci/serial.h                            |    6 ++----
 arch/arm/mach-dove/bridge-regs.h                          |    9 ++-------
 arch/arm/mach-dove/cm-a510.c                              |    5 +----
 arch/arm/mach-dove/common.c                               |    5 +----
 arch/arm/mach-dove/common.h                               |    5 +----
 arch/arm/mach-dove/dove-db-setup.c                        |    5 +----
 arch/arm/mach-dove/dove.h                                 |    9 ++-------
 arch/arm/mach-dove/irq.c                                  |    5 +----
 arch/arm/mach-dove/irqs.h                                 |    9 ++-------
 arch/arm/mach-dove/mpp.c                                  |    5 +----
 arch/arm/mach-dove/pcie.c                                 |    5 +----
 arch/arm/mach-dove/pm.h                                   |    6 +-----
 arch/arm/mach-lpc18xx/board-dt.c                          |    5 +----
 arch/arm/mach-lpc32xx/pm.c                                |    6 ++----
 arch/arm/mach-lpc32xx/suspend.S                           |    6 ++----
 arch/arm/mach-mv78xx0/bridge-regs.h                       |    6 +-----
 arch/arm/mach-mv78xx0/buffalo-wxl-setup.c                 |    5 +----
 arch/arm/mach-mv78xx0/common.c                            |    5 +----
 arch/arm/mach-mv78xx0/common.h                            |    5 +----
 arch/arm/mach-mv78xx0/db78x00-bp-setup.c                  |    5 +----
 arch/arm/mach-mv78xx0/irq.c                               |    5 +----
 arch/arm/mach-mv78xx0/irqs.h                              |    9 ++-------
 arch/arm/mach-mv78xx0/mpp.c                               |    5 +----
 arch/arm/mach-mv78xx0/mpp.h                               |    6 +-----
 arch/arm/mach-mv78xx0/mv78xx0.h                           |    5 +----
 arch/arm/mach-mv78xx0/pcie.c                              |    5 +----
 arch/arm/mach-mv78xx0/rd78x00-masa-setup.c                |    5 +----
 arch/arm/mach-mvebu/armada-370-xp.h                       |    5 +----
 arch/arm/mach-mvebu/board-v7.c                            |    5 +----
 arch/arm/mach-mvebu/coherency.c                           |    5 +----
 arch/arm/mach-mvebu/coherency.h                           |    6 +-----
 arch/arm/mach-mvebu/coherency_ll.S                        |    5 +----
 arch/arm/mach-mvebu/common.h                              |    5 +----
 arch/arm/mach-mvebu/cpu-reset.c                           |    5 +----
 arch/arm/mach-mvebu/dove.c                                |    5 +----
 arch/arm/mach-mvebu/headsmp-a9.S                          |    5 +----
 arch/arm/mach-mvebu/headsmp.S                             |    5 +----
 arch/arm/mach-mvebu/kirkwood.c                            |    5 +----
 arch/arm/mach-mvebu/kirkwood.h                            |    5 +----
 arch/arm/mach-mvebu/mvebu-soc-id.c                        |    5 +----
 arch/arm/mach-mvebu/mvebu-soc-id.h                        |    5 +----
 arch/arm/mach-mvebu/platsmp-a9.c                          |    5 +----
 arch/arm/mach-mvebu/platsmp.c                             |    5 +----
 arch/arm/mach-mvebu/pm-board.c                            |    5 +----
 arch/arm/mach-mvebu/pm.c                                  |    5 +----
 arch/arm/mach-mvebu/pmsu.c                                |    5 +----
 arch/arm/mach-mvebu/pmsu.h                                |    5 +----
 arch/arm/mach-mvebu/pmsu_ll.S                             |    5 +----
 arch/arm/mach-mvebu/system-controller.c                   |    5 +----
 arch/arm/mach-omap1/mtd-xip.h                             |    6 ++----
 arch/arm/mach-omap1/pm_bus.c                              |    6 +-----
 arch/arm/mach-omap2/prcm43xx.h                            |    5 +----
 arch/arm/mach-omap2/vc.c                                  |    6 +-----
 arch/arm/mach-orion5x/board-d2net.c                       |    5 +----
 arch/arm/mach-orion5x/board-dt.c                          |    5 +----
 arch/arm/mach-orion5x/board-rd88f5182.c                   |    5 +----
 arch/arm/mach-orion5x/bridge-regs.h                       |    9 ++-------
 arch/arm/mach-orion5x/common.c                            |    5 +----
 arch/arm/mach-orion5x/db88f5281-setup.c                   |    5 +----
 arch/arm/mach-orion5x/irq.c                               |    5 +----
 arch/arm/mach-orion5x/irqs.h                              |    5 +----
 arch/arm/mach-orion5x/kurobox_pro-setup.c                 |    5 +----
 arch/arm/mach-orion5x/ls_hgl-setup.c                      |    5 +----
 arch/arm/mach-orion5x/mpp.c                               |    5 +----
 arch/arm/mach-orion5x/net2big-setup.c                     |    6 +-----
 arch/arm/mach-orion5x/orion5x.h                           |    5 +----
 arch/arm/mach-orion5x/pci.c                               |    5 +----
 arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c              |    5 +----
 arch/arm/mach-orion5x/rd88f5181l-ge-setup.c               |    5 +----
 arch/arm/mach-orion5x/rd88f5182-setup.c                   |    5 +----
 arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c              |    5 +----
 arch/arm/mach-orion5x/ts78xx-setup.c                      |    5 +----
 arch/arm/mach-orion5x/wnr854t-setup.c                     |    9 ++-------
 arch/arm/mach-orion5x/wrt350n-v2-setup.c                  |    9 ++-------
 arch/arm/mach-pxa/eseries.c                               |    7 +------
 arch/arm/mach-pxa/standby.S                               |    6 ++----
 arch/arm/mach-spear/generic.h                             |    5 +----
 arch/arm/mach-spear/misc_regs.h                           |    5 +----
 arch/arm/mach-spear/pl080.c                               |    5 +----
 arch/arm/mach-spear/pl080.h                               |    5 +----
 arch/arm/mach-spear/restart.c                             |    5 +----
 arch/arm/mach-spear/spear.h                               |    5 +----
 arch/arm/mach-spear/spear1310.c                           |    5 +----
 arch/arm/mach-spear/spear1340.c                           |    5 +----
 arch/arm/mach-spear/spear13xx.c                           |    5 +----
 arch/arm/mach-spear/spear300.c                            |    5 +----
 arch/arm/mach-spear/spear310.c                            |    5 +----
 arch/arm/mach-spear/spear320.c                            |    5 +----
 arch/arm/mach-spear/spear3xx.c                            |    5 +----
 arch/arm/mach-spear/spear6xx.c                            |    5 +----
 arch/arm/mach-spear/time.c                                |    5 +----
 arch/arm/mm/cache-feroceon-l2.c                           |    5 +----
 arch/arm/mm/cache-tauros2.c                               |    5 +----
 149 files changed, 185 insertions(+), 656 deletions(-)

--- a/arch/arm/boot/dts/am33xx.dtsi
+++ b/arch/arm/boot/dts/am33xx.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for AM33XX SoC
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/bus/ti-sysc.h>
--- a/arch/arm/boot/dts/am3517.dtsi
+++ b/arch/arm/boot/dts/am3517.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for am3517 SoC
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include "omap3.dtsi"
--- a/arch/arm/boot/dts/am4372.dtsi
+++ b/arch/arm/boot/dts/am4372.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for AM4372 SoC
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/bus/ti-sysc.h>
--- a/arch/arm/boot/dts/artpec6-devboard.dts
+++ b/arch/arm/boot/dts/artpec6-devboard.dts
@@ -1,10 +1,5 @@
-/*
- * Axis ARTPEC-6 development board.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Axis ARTPEC-6 development board.
 
 /dts-v1/;
 #include "artpec6.dtsi"
--- a/arch/arm/boot/dts/dm814x.dtsi
+++ b/arch/arm/boot/dts/dm814x.dtsi
@@ -1,8 +1,4 @@
-/*
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <dt-bindings/bus/ti-sysc.h>
 #include <dt-bindings/clock/dm814.h>
--- a/arch/arm/boot/dts/dm816x.dtsi
+++ b/arch/arm/boot/dts/dm816x.dtsi
@@ -1,8 +1,4 @@
-/*
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <dt-bindings/bus/ti-sysc.h>
 #include <dt-bindings/clock/dm816.h>
--- a/arch/arm/boot/dts/dra62x.dtsi
+++ b/arch/arm/boot/dts/dra62x.dtsi
@@ -1,8 +1,4 @@
-/*
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include "dm814x.dtsi"
 
--- a/arch/arm/boot/dts/dra7-dspeve-thermal.dtsi
+++ b/arch/arm/boot/dts/dra7-dspeve-thermal.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for DRA7x SoC DSPEVE thermal
  *
  * Copyright (C) 2016 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/thermal/thermal.h>
--- a/arch/arm/boot/dts/dra7-iva-thermal.dtsi
+++ b/arch/arm/boot/dts/dra7-iva-thermal.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for DRA7x SoC IVA thermal
  *
  * Copyright (C) 2016 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/thermal/thermal.h>
--- a/arch/arm/boot/dts/imx6q-gk802.dts
+++ b/arch/arm/boot/dts/imx6q-gk802.dts
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2013 Philipp Zabel
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2013 Philipp Zabel
 
 /dts-v1/;
 #include <dt-bindings/gpio/gpio.h>
--- a/arch/arm/boot/dts/omap2.dtsi
+++ b/arch/arm/boot/dts/omap2.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP2 SoC
  *
  * Copyright (C) 2011 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/bus/ti-sysc.h>
--- a/arch/arm/boot/dts/omap2420.dtsi
+++ b/arch/arm/boot/dts/omap2420.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP2420 SoC
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include "omap2.dtsi"
--- a/arch/arm/boot/dts/omap2430.dtsi
+++ b/arch/arm/boot/dts/omap2430.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP243x SoC
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include "omap2.dtsi"
--- a/arch/arm/boot/dts/omap3-cpu-thermal.dtsi
+++ b/arch/arm/boot/dts/omap3-cpu-thermal.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP3 SoC CPU thermal
  *
  * Copyright (C) 2017 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/thermal/thermal.h>
--- a/arch/arm/boot/dts/omap3.dtsi
+++ b/arch/arm/boot/dts/omap3.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP3 SoC
  *
  * Copyright (C) 2011 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/bus/ti-sysc.h>
--- a/arch/arm/boot/dts/omap34xx.dtsi
+++ b/arch/arm/boot/dts/omap34xx.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP34xx/OMAP35xx SoC
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/bus/ti-sysc.h>
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP3 SoC
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/bus/ti-sysc.h>
--- a/arch/arm/boot/dts/omap4-cpu-thermal.dtsi
+++ b/arch/arm/boot/dts/omap4-cpu-thermal.dtsi
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP4/5 SoC CPU thermal
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
  * Contact: Eduardo Valentin <eduardo.valentin@ti.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/thermal/thermal.h>
--- a/arch/arm/boot/dts/omap443x.dtsi
+++ b/arch/arm/boot/dts/omap443x.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP443x SoC
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include "omap4.dtsi"
--- a/arch/arm/boot/dts/omap4460.dtsi
+++ b/arch/arm/boot/dts/omap4460.dtsi
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP4460 SoC
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 #include "omap4.dtsi"
 
--- a/arch/arm/boot/dts/omap5-core-thermal.dtsi
+++ b/arch/arm/boot/dts/omap5-core-thermal.dtsi
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP543x SoC CORE thermal
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
  * Contact: Eduardo Valentin <eduardo.valentin@ti.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/thermal/thermal.h>
--- a/arch/arm/boot/dts/omap5-gpu-thermal.dtsi
+++ b/arch/arm/boot/dts/omap5-gpu-thermal.dtsi
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree Source for OMAP543x SoC GPU thermal
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
  * Contact: Eduardo Valentin <eduardo.valentin@ti.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <dt-bindings/thermal/thermal.h>
--- a/arch/arm/boot/dts/orion5x-lacie-d2-network.dts
+++ b/arch/arm/boot/dts/orion5x-lacie-d2-network.dts
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  * Copyright (C) 2009 Simon Guinot <sguinot@lacie.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 /dts-v1/;
--- a/arch/arm/boot/dts/orion5x-lacie-ethernet-disk-mini-v2.dts
+++ b/arch/arm/boot/dts/orion5x-lacie-ethernet-disk-mini-v2.dts
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2012 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2012 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
 
 /*
  * TODO: add Orion USB device port init when kernel.org support is added.
--- a/arch/arm/boot/dts/orion5x-maxtor-shared-storage-2.dts
+++ b/arch/arm/boot/dts/orion5x-maxtor-shared-storage-2.dts
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  * Copyright (C) Sylver Bruneau <sylver.bruneau@googlemail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 /dts-v1/;
--- a/arch/arm/boot/dts/orion5x-mv88f5181.dtsi
+++ b/arch/arm/boot/dts/orion5x-mv88f5181.dtsi
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2016 Jamie Lentin <jm@lentin.co.uk>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2016 Jamie Lentin <jm@lentin.co.uk>
 
 #include "orion5x.dtsi"
 
--- a/arch/arm/boot/dts/orion5x-mv88f5182.dtsi
+++ b/arch/arm/boot/dts/orion5x-mv88f5182.dtsi
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2014 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
 
 #include "orion5x.dtsi"
 
--- a/arch/arm/boot/dts/orion5x-netgear-wnr854t.dts
+++ b/arch/arm/boot/dts/orion5x-netgear-wnr854t.dts
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2016 Jamie Lentin <jm@lentin.co.uk>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2016 Jamie Lentin <jm@lentin.co.uk>
 
 /dts-v1/;
 
--- a/arch/arm/boot/dts/orion5x-rd88f5182-nas.dts
+++ b/arch/arm/boot/dts/orion5x-rd88f5182-nas.dts
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2014 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
 
 /dts-v1/;
 
--- a/arch/arm/boot/dts/orion5x.dtsi
+++ b/arch/arm/boot/dts/orion5x.dtsi
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2012 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2012 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
 
 #define MBUS_ID(target,attributes) (((target) << 24) | ((attributes) << 16))
 
--- a/arch/arm/include/asm/hardware/cache-aurora-l2.h
+++ b/arch/arm/include/asm/hardware/cache-aurora-l2.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * AURORA shared L2 cache controller support
  *
@@ -5,10 +6,6 @@
  *
  * Yehuda Yitschak <yehuday@marvell.com>
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __ASM_ARM_HARDWARE_AURORA_L2_H
--- a/arch/arm/include/asm/hardware/cache-feroceon-l2.h
+++ b/arch/arm/include/asm/hardware/cache-feroceon-l2.h
@@ -1,13 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/include/asm/hardware/cache-feroceon-l2.h
  *
  * Copyright (C) 2008 Marvell Semiconductor
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 extern void __init feroceon_l2_init(int l2_wt_override);
 extern int __init feroceon_of_init(void);
-
--- a/arch/arm/include/asm/hardware/cache-tauros2.h
+++ b/arch/arm/include/asm/hardware/cache-tauros2.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/include/asm/hardware/cache-tauros2.h
  *
  * Copyright (C) 2008 Marvell Semiconductor
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define CACHE_TAUROS2_PREFETCH_ON	(1 << 0)
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -1,13 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DA830/OMAP L137 EVM board
  *
  * Author: Mark A. Greer <mgreer@mvista.com>
  * Derived from: arch/arm/mach-davinci/board-dm644x-evm.c
  *
- * 2007, 2009 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007, 2009 (c) MontaVista Software, Inc.
  */
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DA850/OMAP-L138 EVM board
  *
@@ -6,10 +7,7 @@
  * Derived from: arch/arm/mach-davinci/board-da830-evm.c
  * Original Copyrights follow:
  *
- * 2007, 2009 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007, 2009 (c) MontaVista Software, Inc.
  */
 #include <linux/console.h>
 #include <linux/delay.h>
--- a/arch/arm/mach-davinci/board-dm355-evm.c
+++ b/arch/arm/mach-davinci/board-dm355-evm.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci EVM board support
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) MontaVista Software, Inc.
  */
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-davinci/board-dm355-leopard.c
+++ b/arch/arm/mach-davinci/board-dm355-leopard.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * DM355 leopard board support
  *
  * Based on board-dm355-evm.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci EVM board support
  *
  * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) MontaVista Software, Inc.
  */
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-davinci/board-dm646x-evm.c
+++ b/arch/arm/mach-davinci/board-dm646x-evm.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci DM646X EVM board
  *
@@ -5,11 +6,6 @@
  * Copyright (C) 2006 Texas Instruments.
  *
  * (C) 2007-2008, MontaVista Software, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 /**************************************************************************
@@ -870,4 +866,3 @@ MACHINE_START(DAVINCI_DM6467TEVM, "DaVin
 	.init_late	= davinci_init_late,
 	.dma_zone_size	= SZ_128M,
 MACHINE_END
-
--- a/arch/arm/mach-davinci/board-mityomapl138.c
+++ b/arch/arm/mach-davinci/board-mityomapl138.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Critical Link MityOMAP-L138 SoM
  *
  * Copyright (C) 2010 Critical Link LLC - https://www.criticallink.com
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of
- * any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "MityOMAPL138: " fmt
--- a/arch/arm/mach-davinci/board-neuros-osd2.c
+++ b/arch/arm/mach-davinci/board-neuros-osd2.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Neuros Technologies OSD2 board support
  *
@@ -18,10 +19,6 @@
  *
  * For more information please refer to
  * 		http://wiki.neurostechnology.com/index.php/OSD_2.0_HD
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/platform_device.h>
 #include <linux/gpio.h>
--- a/arch/arm/mach-davinci/board-omapl138-hawk.c
+++ b/arch/arm/mach-davinci/board-omapl138-hawk.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Hawkboard.org based on TI's OMAP-L138 Platform
  *
  * Initial code: Syed Mohammed Khasim
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - https://www.ti.com
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of
- * any kind, whether express or implied.
  */
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-davinci/common.c
+++ b/arch/arm/mach-davinci/common.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Code commons to all DaVinci SoCs.
  *
  * Author: Mark A. Greer <mgreer@mvista.com>
  *
- * 2009 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2009 (c) MontaVista Software, Inc.
  */
 #include <linux/module.h>
 #include <linux/io.h>
--- a/arch/arm/mach-davinci/common.h
+++ b/arch/arm/mach-davinci/common.h
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Header for code common to all DaVinci machines.
  *
  * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) MontaVista Software, Inc.
  */
 
 #ifndef __ARCH_ARM_MACH_DAVINCI_COMMON_H
--- a/arch/arm/mach-davinci/cpuidle.h
+++ b/arch/arm/mach-davinci/cpuidle.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI DaVinci cpuidle platform support
  *
  * 2009 (C) Texas Instruments, Inc. https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 #ifndef _MACH_DAVINCI_CPUIDLE_H
 #define _MACH_DAVINCI_CPUIDLE_H
--- a/arch/arm/mach-davinci/cputype.h
+++ b/arch/arm/mach-davinci/cputype.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * DaVinci CPU type detection
  *
@@ -8,10 +9,7 @@
  * compiled in to the kernel, the macros return 0 so that
  * resulting code can be optimized out.
  *
- * 2009 (c) Deep Root Systems, LLC. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2009 (c) Deep Root Systems, LLC.
  */
 #ifndef _ASM_ARCH_CPU_H
 #define _ASM_ARCH_CPU_H
--- a/arch/arm/mach-davinci/da830.c
+++ b/arch/arm/mach-davinci/da830.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DA830/OMAP L137 chip specific setup
  *
  * Author: Mark A. Greer <mgreer@mvista.com>
  *
- * 2009 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2009 (c) MontaVista Software, Inc.
  */
 #include <linux/clk-provider.h>
 #include <linux/clk/davinci.h>
--- a/arch/arm/mach-davinci/da850.c
+++ b/arch/arm/mach-davinci/da850.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DA850/OMAP-L138 chip specific setup
  *
@@ -6,10 +7,7 @@
  * Derived from: arch/arm/mach-davinci/da830.c
  * Original Copyrights follow:
  *
- * 2009 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2009 (c) MontaVista Software, Inc.
  */
 
 #include <linux/clk-provider.h>
--- a/arch/arm/mach-davinci/da8xx.h
+++ b/arch/arm/mach-davinci/da8xx.h
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Chip specific defines for DA8XX/OMAP L1XX SoC
  *
  * Author: Mark A. Greer <mgreer@mvista.com>
  *
- * 2007, 2009-2010 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007, 2009-2010 (c) MontaVista Software, Inc.
  */
 #ifndef __ASM_ARCH_DAVINCI_DA8XX_H
 #define __ASM_ARCH_DAVINCI_DA8XX_H
--- a/arch/arm/mach-davinci/dm355.c
+++ b/arch/arm/mach-davinci/dm355.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci DM355 chip specific setup
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
- * 2007 (c) Deep Root Systems, LLC. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) Deep Root Systems, LLC.
  */
 
 #include <linux/clk-provider.h>
--- a/arch/arm/mach-davinci/dm644x.c
+++ b/arch/arm/mach-davinci/dm644x.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci DM644x chip specific setup
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
- * 2007 (c) Deep Root Systems, LLC. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) Deep Root Systems, LLC.
  */
 
 #include <linux/clk-provider.h>
--- a/arch/arm/mach-davinci/dm646x.c
+++ b/arch/arm/mach-davinci/dm646x.c
@@ -1,12 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci DM646x chip specific setup
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
- * 2007 (c) Deep Root Systems, LLC. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) Deep Root Systems, LLC.
  */
 
 #include <linux/clk-provider.h>
--- a/arch/arm/mach-davinci/hardware.h
+++ b/arch/arm/mach-davinci/hardware.h
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Hardware definitions common to all DaVinci family processors
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
- * 2007 (c) Deep Root Systems, LLC. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) Deep Root Systems, LLC.
  */
 #ifndef __ASM_ARCH_HARDWARE_H
 #define __ASM_ARCH_HARDWARE_H
--- a/arch/arm/mach-davinci/mux.c
+++ b/arch/arm/mach-davinci/mux.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Utility to set the DAVINCI MUX register from a table in mux.h
  *
@@ -8,10 +9,7 @@
  *
  * Written by Tony Lindgren
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) MontaVista Software, Inc.
  *
  * Copyright (C) 2008 Texas Instruments.
  */
--- a/arch/arm/mach-davinci/mux.h
+++ b/arch/arm/mach-davinci/mux.h
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Pin-multiplex helper macros for TI DaVinci family devices
  *
  * Author: Vladimir Barinov, MontaVista Software, Inc. <source@mvista.com>
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) MontaVista Software, Inc.
  *
  * Copyright (C) 2008 Texas Instruments.
  */
--- a/arch/arm/mach-davinci/pm_domain.c
+++ b/arch/arm/mach-davinci/pm_domain.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Runtime PM support code for DaVinci
  *
  * Author: Kevin Hilman
  *
  * Copyright (C) 2012 Texas Instruments, Inc.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/init.h>
 #include <linux/pm_runtime.h>
--- a/arch/arm/mach-davinci/serial.h
+++ b/arch/arm/mach-davinci/serial.h
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * DaVinci serial device definitions
  *
  * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2007 (c) MontaVista Software, Inc.
  */
 #ifndef __ASM_ARCH_SERIAL_H
 #define __ASM_ARCH_SERIAL_H
--- a/arch/arm/mach-dove/bridge-regs.h
+++ b/arch/arm/mach-dove/bridge-regs.h
@@ -1,10 +1,5 @@
-/*
- * Mbus-L to Mbus Bridge Registers
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Mbus-L to Mbus Bridge Registers */
 
 #ifndef __ASM_ARCH_BRIDGE_REGS_H
 #define __ASM_ARCH_BRIDGE_REGS_H
--- a/arch/arm/mach-dove/cm-a510.c
+++ b/arch/arm/mach-dove/cm-a510.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-dove/cm-a510.c
  *
@@ -5,10 +6,6 @@
  * Konstantin Sinyuk <kostyas@compulab.co.il>
  *
  * Based on Marvell DB-MV88AP510-BP Development Board Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-dove/common.c
+++ b/arch/arm/mach-dove/common.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-dove/common.c
  *
  * Core functions for Marvell Dove 88AP510 System On Chip
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/arch/arm/mach-dove/common.h
+++ b/arch/arm/mach-dove/common.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/mach-dove/common.h
  *
  * Core functions for Marvell Dove 88AP510 System On Chip
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __ARCH_DOVE_COMMON_H
--- a/arch/arm/mach-dove/dove-db-setup.c
+++ b/arch/arm/mach-dove/dove-db-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-dove/dove-db-setup.c
  *
  * Marvell DB-MV88AP510-BP Development Board Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-dove/dove.h
+++ b/arch/arm/mach-dove/dove.h
@@ -1,10 +1,5 @@
-/*
- * Generic definitions for Marvell Dove 88AP510 SoC
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Generic definitions for Marvell Dove 88AP510 SoC */
 
 #ifndef __ASM_ARCH_DOVE_H
 #define __ASM_ARCH_DOVE_H
--- a/arch/arm/mach-dove/irq.c
+++ b/arch/arm/mach-dove/irq.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-dove/irq.c
  *
  * Dove IRQ handling.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/init.h>
 #include <linux/irq.h>
--- a/arch/arm/mach-dove/irqs.h
+++ b/arch/arm/mach-dove/irqs.h
@@ -1,10 +1,5 @@
-/*
- * IRQ definitions for Marvell Dove 88AP510 SoC
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* IRQ definitions for Marvell Dove 88AP510 SoC */
 
 #ifndef __ASM_ARCH_IRQS_H
 #define __ASM_ARCH_IRQS_H
--- a/arch/arm/mach-dove/mpp.c
+++ b/arch/arm/mach-dove/mpp.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-dove/mpp.c
  *
  * MPP functions for Marvell Dove SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-dove/pcie.c
+++ b/arch/arm/mach-dove/pcie.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-dove/pcie.c
  *
  * PCIe functions for Marvell Dove 88AP510 SoC
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-dove/pm.h
+++ b/arch/arm/mach-dove/pm.h
@@ -1,8 +1,4 @@
-/*
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #ifndef __ASM_ARCH_PM_H
 #define __ASM_ARCH_PM_H
--- a/arch/arm/mach-lpc18xx/board-dt.c
+++ b/arch/arm/mach-lpc18xx/board-dt.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree board file for NXP LPC18xx/43xx
  *
  * Copyright (C) 2015 Joachim Eastwood <manabian@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <asm/mach/arch.h>
--- a/arch/arm/mach-lpc32xx/pm.c
+++ b/arch/arm/mach-lpc32xx/pm.c
@@ -1,13 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-lpc32xx/pm.c
  *
  * Original authors: Vitaly Wool, Dmitry Chigirev <source@mvista.com>
  * Modified by Kevin Wells <kevin.wells@nxp.com>
  *
- * 2005 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2005 (c) MontaVista Software, Inc.
  */
 
 /*
--- a/arch/arm/mach-lpc32xx/suspend.S
+++ b/arch/arm/mach-lpc32xx/suspend.S
@@ -1,13 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/mach-lpc32xx/suspend.S
  *
  * Original authors: Dmitry Chigirev, Vitaly Wool <source@mvista.com>
  * Modified by Kevin Wells <kevin.wells@nxp.com>
  *
- * 2005 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2005 (c) MontaVista Software, Inc.
  */
 #include <linux/linkage.h>
 #include <asm/assembler.h>
--- a/arch/arm/mach-mv78xx0/bridge-regs.h
+++ b/arch/arm/mach-mv78xx0/bridge-regs.h
@@ -1,8 +1,4 @@
-/*
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
 
 #ifndef __ASM_ARCH_BRIDGE_REGS_H
 #define __ASM_ARCH_BRIDGE_REGS_H
--- a/arch/arm/mach-mv78xx0/buffalo-wxl-setup.c
+++ b/arch/arm/mach-mv78xx0/buffalo-wxl-setup.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78xx0/buffalo-wxl-setup.c
  *
  * Buffalo WXL (Terastation Duo) Setup routines
  *
  * sebastien requiem <sebastien@requiem.fr>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-mv78xx0/common.c
+++ b/arch/arm/mach-mv78xx0/common.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78xx0/common.c
  *
  * Core functions for Marvell MV78xx0 SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-mv78xx0/common.h
+++ b/arch/arm/mach-mv78xx0/common.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/mach-mv78xx0/common.h
  *
  * Core functions for Marvell MV78xx0 SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __ARCH_MV78XX0_COMMON_H
--- a/arch/arm/mach-mv78xx0/db78x00-bp-setup.c
+++ b/arch/arm/mach-mv78xx0/db78x00-bp-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78xx0/db78x00-bp-setup.c
  *
  * Marvell DB-78x00-BP Development Board Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-mv78xx0/irq.c
+++ b/arch/arm/mach-mv78xx0/irq.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78xx0/irq.c
  *
  * MV78xx0 IRQ handling.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-mv78xx0/irqs.h
+++ b/arch/arm/mach-mv78xx0/irqs.h
@@ -1,10 +1,5 @@
-/*
- * IRQ definitions for Marvell MV78xx0 SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* IRQ definitions for Marvell MV78xx0 SoCs */
 
 #ifndef __ASM_ARCH_IRQS_H
 #define __ASM_ARCH_IRQS_H
--- a/arch/arm/mach-mv78xx0/mpp.c
+++ b/arch/arm/mach-mv78xx0/mpp.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78x00/mpp.c
  *
  * MPP functions for Marvell MV78x00 SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-mv78xx0/mpp.h
+++ b/arch/arm/mach-mv78xx0/mpp.h
@@ -1,12 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * linux/arch/arm/mach-mv78xx0/mpp.h -- Multi Purpose Pins
  *
- *
  * sebastien requiem <sebastien@requiem.fr>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MV78X00_MPP_H
--- a/arch/arm/mach-mv78xx0/mv78xx0.h
+++ b/arch/arm/mach-mv78xx0/mv78xx0.h
@@ -1,10 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Generic definitions for Marvell MV78xx0 SoC flavors:
  *  MV781x0 and MV782x0.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __ASM_ARCH_MV78XX0_H
--- a/arch/arm/mach-mv78xx0/pcie.c
+++ b/arch/arm/mach-mv78xx0/pcie.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78xx0/pcie.c
  *
  * PCIe functions for Marvell MV78xx0 SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-mv78xx0/rd78x00-masa-setup.c
+++ b/arch/arm/mach-mv78xx0/rd78x00-masa-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mv78x00/rd78x00-masa-setup.c
  *
  * Marvell RD-78x00-mASA Development Board Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-mvebu/armada-370-xp.h
+++ b/arch/arm/mach-mvebu/armada-370-xp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Generic definitions for Marvell Armada_370_XP SoCs
  *
@@ -6,10 +7,6 @@
  * Lior Amsalem <alior@marvell.com>
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MACH_ARMADA_370_XP_H
--- a/arch/arm/mach-mvebu/board-v7.c
+++ b/arch/arm/mach-mvebu/board-v7.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Device Tree support for Armada 370 and XP platforms.
  *
@@ -6,10 +7,6 @@
  * Lior Amsalem <alior@marvell.com>
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-mvebu/coherency.c
+++ b/arch/arm/mach-mvebu/coherency.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Coherency fabric (Aurora) support for Armada 370, 375, 38x and XP
  * platforms.
@@ -8,10 +9,6 @@
  * Gregory Clement <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The Armada 370, 375, 38x and XP SOCs have a coherency fabric which is
  * responsible for ensuring hardware coherency between all CPUs and between
  * CPUs and I/O masters. This file initializes the coherency fabric and
--- a/arch/arm/mach-mvebu/coherency.h
+++ b/arch/arm/mach-mvebu/coherency.h
@@ -1,14 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/mach-mvebu/include/mach/coherency.h
  *
- *
  * Coherency fabric (Aurora) support for Armada 370 and XP platforms.
  *
  * Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MACH_370_XP_COHERENCY_H
--- a/arch/arm/mach-mvebu/coherency_ll.S
+++ b/arch/arm/mach-mvebu/coherency_ll.S
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Coherency fabric: low level functions
  *
@@ -5,10 +6,6 @@
  *
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * This file implements the assembly function to add a CPU to the
  * coherency fabric. This function is called by each of the secondary
  * CPUs during their early boot in an SMP kernel, this why this
--- a/arch/arm/mach-mvebu/common.h
+++ b/arch/arm/mach-mvebu/common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Core functions for Marvell System On Chip
  *
@@ -6,10 +7,6 @@
  * Lior Amsalem <alior@marvell.com>
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __ARCH_MVEBU_COMMON_H
--- a/arch/arm/mach-mvebu/cpu-reset.c
+++ b/arch/arm/mach-mvebu/cpu-reset.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Marvell
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "mvebu-cpureset: " fmt
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-mvebu/dove.c
  *
  * Marvell Dove 88AP510 System On Chip FDT Board
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/arch/arm/mach-mvebu/headsmp-a9.S
+++ b/arch/arm/mach-mvebu/headsmp-a9.S
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * SMP support: Entry point for secondary CPUs of Marvell EBU
  * Cortex-A9 based SOCs (Armada 375 and Armada 38x).
@@ -6,10 +7,6 @@
  *
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/linkage.h>
--- a/arch/arm/mach-mvebu/headsmp.S
+++ b/arch/arm/mach-mvebu/headsmp.S
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * SMP support: Entry point for secondary CPUs
  *
@@ -7,10 +8,6 @@
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * This file implements the assembly entry point for secondary CPUs in
  * an SMP kernel. The only thing we need to do is to add the CPU to
  * the coherency fabric by writing to 2 registers. Currently the base
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2012 (C), Jason Cooper <jason@lakedaemon.net>
  *
  * arch/arm/mach-mvebu/kirkwood.c
  *
  * Flattened Device Tree board initialization
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/arch/arm/mach-mvebu/kirkwood.h
+++ b/arch/arm/mach-mvebu/kirkwood.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/mach-mvebu/kirkwood.h
  *
  * Generic definitions for Marvell Kirkwood SoC flavors:
  * 88F6180, 88F6192 and 88F6281.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define KIRKWOOD_REGS_PHYS_BASE	0xf1000000
--- a/arch/arm/mach-mvebu/mvebu-soc-id.c
+++ b/arch/arm/mach-mvebu/mvebu-soc-id.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * ID and revision information for mvebu SoCs
  *
@@ -5,10 +6,6 @@
  *
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * All the mvebu SoCs have information related to their variant and
  * revision that can be read from the PCI control register. This is
  * done before the PCI initialization to avoid any conflict. Once the
--- a/arch/arm/mach-mvebu/mvebu-soc-id.h
+++ b/arch/arm/mach-mvebu/mvebu-soc-id.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Marvell EBU SoC ID and revision definitions.
  *
  * Copyright (C) 2014 Marvell Semiconductor
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __LINUX_MVEBU_SOC_ID_H
--- a/arch/arm/mach-mvebu/platsmp-a9.c
+++ b/arch/arm/mach-mvebu/platsmp-a9.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Symmetric Multi Processing (SMP) support for Marvell EBU Cortex-A9
  * based SOCs (Armada 375/38x).
@@ -6,10 +7,6 @@
  *
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/arch/arm/mach-mvebu/platsmp.c
+++ b/arch/arm/mach-mvebu/platsmp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Symmetric Multi Processing (SMP) support for Armada XP
  *
@@ -8,10 +9,6 @@
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The Armada XP SoC has 4 ARMv7 PJ4B CPUs running in full HW coherency
  * This file implements the routines for preparing the SMP infrastructure
  * and waking up the secondary CPUs
--- a/arch/arm/mach-mvebu/pm-board.c
+++ b/arch/arm/mach-mvebu/pm-board.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Board-level suspend/resume support.
  *
  * Copyright (C) 2014-2015 Marvell
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/delay.h>
--- a/arch/arm/mach-mvebu/pm.c
+++ b/arch/arm/mach-mvebu/pm.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Suspend/resume support. Currently supporting Armada XP only.
  *
  * Copyright (C) 2014 Marvell
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/cpu_pm.h>
--- a/arch/arm/mach-mvebu/pmsu.c
+++ b/arch/arm/mach-mvebu/pmsu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Power Management Service Unit(PMSU) support for Armada 370/XP platforms.
  *
@@ -7,10 +8,6 @@
  * Gregory Clement <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The Armada 370 and Armada XP SOCs have a power management service
  * unit which is responsible for powering down and waking up CPUs and
  * other SOC units
--- a/arch/arm/mach-mvebu/pmsu.h
+++ b/arch/arm/mach-mvebu/pmsu.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Power Management Service Unit (PMSU) support for Armada 370/XP platforms.
  *
  * Copyright (C) 2012 Marvell
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MACH_MVEBU_PMSU_H
--- a/arch/arm/mach-mvebu/pmsu_ll.S
+++ b/arch/arm/mach-mvebu/pmsu_ll.S
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2014 Marvell
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  * Gregory Clement <gregory.clement@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/linkage.h>
--- a/arch/arm/mach-mvebu/system-controller.c
+++ b/arch/arm/mach-mvebu/system-controller.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * System controller support for Armada 370, 375 and XP platforms.
  *
@@ -7,10 +8,6 @@
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The Armada 370, 375 and Armada XP SoCs have a range of
  * miscellaneous registers, that do not belong to a particular device,
  * but rather provide system-level features. This basic
--- a/arch/arm/mach-omap1/mtd-xip.h
+++ b/arch/arm/mach-omap1/mtd-xip.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * MTD primitives for XIP support. Architecture specific functions.
  *
@@ -5,10 +6,7 @@
  *
  * Author: Vladimir Barinov <vbarinov@embeddedalley.com>
  *
- * (c) 2005 MontaVista Software, Inc.  This file is licensed under the
- * terms of the GNU General Public License version 2.  This program is
- * licensed "as is" without any warranty of any kind, whether express or
- * implied.
+ * (c) 2005 MontaVista Software, Inc.
  */
 
 #ifndef __ARCH_OMAP_MTD_XIP_H__
--- a/arch/arm/mach-omap1/pm_bus.c
+++ b/arch/arm/mach-omap1/pm_bus.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Runtime PM support code for OMAP1
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  *
  * Copyright (C) 2010 Texas Instruments, Inc.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -43,4 +40,3 @@ static int __init omap1_pm_runtime_init(
 	return 0;
 }
 core_initcall(omap1_pm_runtime_init);
-
--- a/arch/arm/mach-omap2/prcm43xx.h
+++ b/arch/arm/mach-omap2/prcm43xx.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * AM43x PRCM defines
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #ifndef __ARCH_ARM_MACH_OMAP2_PRCM_43XX_H
--- a/arch/arm/mach-omap2/vc.c
+++ b/arch/arm/mach-omap2/vc.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP Voltage Controller (VC) interface
  *
  * Copyright (C) 2011 Texas Instruments, Inc.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/kernel.h>
 #include <linux/delay.h>
@@ -895,4 +892,3 @@ void __init omap_vc_init_channel(struct
 	else if (cpu_is_omap44xx())
 		omap4_vc_init_channel(voltdm);
 }
-
--- a/arch/arm/mach-orion5x/board-d2net.c
+++ b/arch/arm/mach-orion5x/board-d2net.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/board-d2net.c
  *
  * LaCie d2Network and Big Disk Network NAS setup
  *
  * Copyright (C) 2009 Simon Guinot <sguinot@lacie.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/board-dt.c
+++ b/arch/arm/mach-orion5x/board-dt.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2012 (C), Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
  * arch/arm/mach-orion5x/board-dt.c
  *
  * Flattened Device Tree board initialization
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/board-rd88f5182.c
+++ b/arch/arm/mach-orion5x/board-rd88f5182.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/rd88f5182-setup.c
  *
  * Marvell Orion-NAS Reference Design Setup
  *
  * Maintainer: Ronen Shitrit <rshitrit@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/bridge-regs.h
+++ b/arch/arm/mach-orion5x/bridge-regs.h
@@ -1,10 +1,5 @@
-/*
- * Orion CPU Bridge Registers
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Orion CPU Bridge Registers */
 
 #ifndef __ASM_ARCH_BRIDGE_REGS_H
 #define __ASM_ARCH_BRIDGE_REGS_H
--- a/arch/arm/mach-orion5x/common.c
+++ b/arch/arm/mach-orion5x/common.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/common.c
  *
  * Core functions for Marvell Orion 5x SoCs
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/db88f5281-setup.c
+++ b/arch/arm/mach-orion5x/db88f5281-setup.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/db88f5281-setup.c
  *
  * Marvell Orion-2 Development Board Setup
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/irq.c
+++ b/arch/arm/mach-orion5x/irq.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/irq.c
  *
  * Core IRQ functions for Marvell Orion System On Chip
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/irqs.h
+++ b/arch/arm/mach-orion5x/irqs.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * IRQ definitions for Orion SoC
  *
  *  Maintainer: Tzachi Perelstein <tzachi@marvell.com>
- *
- *  This file is licensed under the terms of the GNU General Public
- *  License version 2. This program is licensed "as is" without any
- *  warranty of any kind, whether express or implied.
  */
 
 #ifndef __ASM_ARCH_IRQS_H
--- a/arch/arm/mach-orion5x/kurobox_pro-setup.c
+++ b/arch/arm/mach-orion5x/kurobox_pro-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/kurobox_pro-setup.c
  *
  * Maintainer: Ronen Shitrit <rshitrit@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/ls_hgl-setup.c
+++ b/arch/arm/mach-orion5x/ls_hgl-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/ls_hgl-setup.c
  *
  * Maintainer: Zhu Qingsen <zhuqs@cn.fujitsu.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/mpp.c
+++ b/arch/arm/mach-orion5x/mpp.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/mpp.c
  *
  * MPP functions for Marvell Orion 5x SoCs
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/net2big-setup.c
+++ b/arch/arm/mach-orion5x/net2big-setup.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/net2big-setup.c
  *
  * LaCie 2Big Network NAS setup
  *
  * Copyright (C) 2009 Simon Guinot <sguinot@lacie.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
@@ -432,4 +429,3 @@ MACHINE_START(NET2BIG, "LaCie 2Big Netwo
 	.fixup		= tag_fixup_mem32,
 	.restart	= orion5x_restart,
 MACHINE_END
-
--- a/arch/arm/mach-orion5x/orion5x.h
+++ b/arch/arm/mach-orion5x/orion5x.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Generic definitions of Orion SoC flavors:
  *  Orion-1, Orion-VoIP, Orion-NAS, Orion-2, and Orion-1-90.
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __ASM_ARCH_ORION5X_H
--- a/arch/arm/mach-orion5x/pci.c
+++ b/arch/arm/mach-orion5x/pci.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/pci.c
  *
  * PCI and PCIe functions for Marvell Orion System On Chip
  *
  * Maintainer: Tzachi Perelstein <tzachi@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c
+++ b/arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c
  *
  * Marvell Orion-VoIP FXO Reference Design Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/rd88f5181l-ge-setup.c
+++ b/arch/arm/mach-orion5x/rd88f5181l-ge-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/rd88f5181l-ge-setup.c
  *
  * Marvell Orion-VoIP GE Reference Design Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/rd88f5182-setup.c
+++ b/arch/arm/mach-orion5x/rd88f5182-setup.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/rd88f5182-setup.c
  *
  * Marvell Orion-NAS Reference Design Setup
  *
  * Maintainer: Ronen Shitrit <rshitrit@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c
+++ b/arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/rd88f6183-ap-ge-setup.c
  *
  * Marvell Orion-1-90 AP GE Reference Design Setup
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/gpio.h>
 #include <linux/kernel.h>
--- a/arch/arm/mach-orion5x/ts78xx-setup.c
+++ b/arch/arm/mach-orion5x/ts78xx-setup.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-orion5x/ts78xx-setup.c
  *
  * Maintainer: Alexander Clouter <alex@digriz.org.uk>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
--- a/arch/arm/mach-orion5x/wnr854t-setup.c
+++ b/arch/arm/mach-orion5x/wnr854t-setup.c
@@ -1,10 +1,5 @@
-/*
- * arch/arm/mach-orion5x/wnr854t-setup.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// arch/arm/mach-orion5x/wnr854t-setup.c
 #include <linux/gpio.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-orion5x/wrt350n-v2-setup.c
+++ b/arch/arm/mach-orion5x/wrt350n-v2-setup.c
@@ -1,10 +1,5 @@
-/*
- * arch/arm/mach-orion5x/wrt350n-v2-setup.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// arch/arm/mach-orion5x/wrt350n-v2-setup.c
 #include <linux/gpio.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
--- a/arch/arm/mach-pxa/eseries.c
+++ b/arch/arm/mach-pxa/eseries.c
@@ -1,13 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Hardware definitions for the Toshiba eseries PDAs
  *
  * Copyright (c) 2003 Ian Molton <spyro@f2s.com>
- *
- * This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
- *
  */
 
 #include <linux/clkdev.h>
--- a/arch/arm/mach-pxa/standby.S
+++ b/arch/arm/mach-pxa/standby.S
@@ -1,12 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * PXA27x standby mode
  *
  * Author: David Burrage
  *
- * 2005 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2005 (c) MontaVista Software, Inc.
  */
 
 #include <linux/linkage.h>
--- a/arch/arm/mach-spear/generic.h
+++ b/arch/arm/mach-spear/generic.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * spear machine family generic header file
  *
  * Copyright (C) 2009-2012 ST Microelectronics
  * Rajeev Kumar <rajeev-dlh.kumar@st.com>
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MACH_GENERIC_H
--- a/arch/arm/mach-spear/misc_regs.h
+++ b/arch/arm/mach-spear/misc_regs.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Miscellaneous registers definitions for SPEAr3xx machine family
  *
  * Copyright (C) 2009 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MACH_MISC_REGS_H
--- a/arch/arm/mach-spear/pl080.c
+++ b/arch/arm/mach-spear/pl080.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/plat-spear/pl080.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/amba/pl08x.h>
--- a/arch/arm/mach-spear/pl080.h
+++ b/arch/arm/mach-spear/pl080.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * arch/arm/plat-spear/include/plat/pl080.h
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __PLAT_PL080_H
--- a/arch/arm/mach-spear/restart.c
+++ b/arch/arm/mach-spear/restart.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/plat-spear/restart.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2009 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/io.h>
 #include <linux/amba/sp810.h>
--- a/arch/arm/mach-spear/spear.h
+++ b/arch/arm/mach-spear/spear.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * SPEAr3xx/6xx Machine family specific definition
  *
  * Copyright (C) 2009,2012 ST Microelectronics
  * Rajeev Kumar<rajeev-dlh.kumar@st.com>
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __MACH_SPEAR_H
--- a/arch/arm/mach-spear/spear1310.c
+++ b/arch/arm/mach-spear/spear1310.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear13xx/spear1310.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr1310: " fmt
--- a/arch/arm/mach-spear/spear1340.c
+++ b/arch/arm/mach-spear/spear1340.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear13xx/spear1340.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr1340: " fmt
--- a/arch/arm/mach-spear/spear13xx.c
+++ b/arch/arm/mach-spear/spear13xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear13xx/spear13xx.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr13xx: " fmt
--- a/arch/arm/mach-spear/spear300.c
+++ b/arch/arm/mach-spear/spear300.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear3xx/spear300.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2009-2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr300: " fmt
--- a/arch/arm/mach-spear/spear310.c
+++ b/arch/arm/mach-spear/spear310.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear3xx/spear310.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2009-2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr310: " fmt
--- a/arch/arm/mach-spear/spear320.c
+++ b/arch/arm/mach-spear/spear320.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear3xx/spear320.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2009-2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr320: " fmt
--- a/arch/arm/mach-spear/spear3xx.c
+++ b/arch/arm/mach-spear/spear3xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear3xx/spear3xx.c
  *
@@ -5,10 +6,6 @@
  *
  * Copyright (C) 2009-2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "SPEAr3xx: " fmt
--- a/arch/arm/mach-spear/spear6xx.c
+++ b/arch/arm/mach-spear/spear6xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear6xx/spear6xx.c
  *
@@ -7,10 +8,6 @@
  * Rajeev Kumar<rajeev-dlh.kumar@st.com>
  *
  * Copyright 2012 Stefan Roese <sr@denx.de>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/amba/pl08x.h>
--- a/arch/arm/mach-spear/time.c
+++ b/arch/arm/mach-spear/time.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/plat-spear/time.c
  *
  * Copyright (C) 2010 ST Microelectronics
  * Shiraz Hashim<shiraz.linux.kernel@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/arch/arm/mm/cache-feroceon-l2.c
+++ b/arch/arm/mm/cache-feroceon-l2.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mm/cache-feroceon-l2.c - Feroceon L2 cache controller support
  *
  * Copyright (C) 2008 Marvell Semiconductor
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * References:
  * - Unified Layer 2 Cache for Feroceon CPU Cores,
  *   Document ID MV-S104858-00, Rev. A, October 23 2007.
--- a/arch/arm/mm/cache-tauros2.c
+++ b/arch/arm/mm/cache-tauros2.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mm/cache-tauros2.c - Tauros2 L2 cache controller support
  *
  * Copyright (C) 2008 Marvell Semiconductor
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * References:
  * - PJ1 CPU Core Datasheet,
  *   Document ID MV-S104837-01, Rev 0.7, January 24 2008.

