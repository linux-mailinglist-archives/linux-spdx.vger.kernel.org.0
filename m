Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5F0541C8D
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 00:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356158AbiFGWC7 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 18:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382420AbiFGWCh (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 18:02:37 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F38D924E031
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 12:14:36 -0700 (PDT)
Message-ID: <20220607191051.339030611@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654629267;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=gakezvUTwOgP+uUviMRszM037RN6DIj14R7Q//jQwhw=;
        b=NdXIot3wE3BeYSbHGZeYaP6BV94hZvzIcpNK5n00y4mNczinunV77JTcRU6biuV3DEM6D3
        h9SluuEeN8ZjoVjgIGWVwJWmi/r5k3Eoci7bcKgOSqaj8oXLhD/rvp8H516sB4ypWHj1T/
        xiy+CLzHsgRsLYL1DTY9ki+zmnpUhkKWsGxUd2h4meK2WVMN0P3CF9ys16Fm93q4e7YLq6
        9PM6nlYfMU3iTgonA3WTESyBLoyh+7uNQbR2/ykzUkHICBJ/5F/B0mld0SaymeadvZYfcy
        N4X073l7LUQy6Wv4DZA3RdgPY/D+FwjP20JAJyBS4DjMmdfYpzc2vk5/GQkSCA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654629267;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=gakezvUTwOgP+uUviMRszM037RN6DIj14R7Q//jQwhw=;
        b=L8t5BiOfgTETuUwuRefQR2fou/fYDaENDBQmYWDeL2w0qpqgpF1ArITzmnn1L1KzClxbQD
        wkZ+BIOUAtLlEYCw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 6-0/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_56.RULE (part 3/1)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 21:14:27 +0200 (CEST)
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
 arch/powerpc/include/asm/mpc52xx.h               |    6 +-----
 arch/powerpc/include/asm/mpc52xx_psc.h           |    6 +-----
 arch/powerpc/include/asm/rheap.h                 |    6 ++----
 arch/powerpc/lib/rheap.c                         |    7 ++-----
 arch/powerpc/platforms/52xx/efika.c              |    6 +-----
 arch/powerpc/platforms/52xx/mpc52xx_common.c     |    7 +------
 arch/powerpc/platforms/52xx/mpc52xx_pci.c        |    5 +----
 arch/powerpc/platforms/52xx/mpc52xx_pic.c        |    7 +------
 arch/powerpc/platforms/85xx/ksi8560.c            |    7 ++-----
 arch/powerpc/platforms/85xx/p1022_ds.c           |    5 +----
 arch/powerpc/platforms/85xx/p1022_rdk.c          |    5 +----
 arch/powerpc/platforms/8xx/ep88xc.c              |    5 +----
 arch/powerpc/platforms/8xx/mpc86xads.h           |    5 ++---
 arch/powerpc/platforms/8xx/mpc86xads_setup.c     |    5 +----
 arch/powerpc/platforms/8xx/mpc885ads.h           |    5 ++---
 arch/powerpc/platforms/8xx/mpc885ads_setup.c     |    5 +----
 arch/powerpc/platforms/8xx/mpc8xx.h              |    5 +----
 arch/powerpc/platforms/8xx/tqm8xx_setup.c        |    5 +----
 arch/powerpc/platforms/embedded6xx/linkstation.c |    5 +----
 arch/powerpc/platforms/embedded6xx/ls_uart.c     |    5 +----
 arch/powerpc/platforms/embedded6xx/mpc10x.h      |    6 ++----
 arch/powerpc/platforms/embedded6xx/storcenter.c  |    5 +----
 arch/powerpc/sysdev/cpm2.c                       |    5 +----
 arch/powerpc/sysdev/cpm2_pic.c                   |    5 +----
 arch/powerpc/sysdev/ehv_pic.c                    |    5 +----
 arch/powerpc/sysdev/ge/ge_pic.c                  |    6 +-----
 drivers/gpu/drm/sun4i/sun8i_ui_scaler.c          |    5 +----
 drivers/gpu/drm/sun4i/sun8i_ui_scaler.h          |    9 ++-------
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.c          |    5 +----
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.h          |    9 ++-------
 drivers/i2c/busses/i2c-octeon-core.c             |    5 +----
 drivers/i2c/busses/i2c-sun6i-p2wi.c              |    6 +-----
 drivers/i2c/busses/i2c-xlp9xx.c                  |    9 ++-------
 drivers/i2c/i2c-mux.c                            |    5 +----
 drivers/i2c/muxes/i2c-mux-pca9541.c              |    5 +----
 drivers/iio/adc/berlin2-adc.c                    |    5 +----
 drivers/input/touchscreen/ts4800-ts.c            |    5 +----
 drivers/irqchip/irq-alpine-msi.c                 |    5 +----
 drivers/irqchip/irq-armada-370-xp.c              |    5 +----
 drivers/irqchip/irq-atmel-aic-common.c           |    5 +----
 drivers/irqchip/irq-atmel-aic-common.h           |    5 +----
 drivers/irqchip/irq-atmel-aic.c                  |    5 +----
 drivers/irqchip/irq-atmel-aic5.c                 |    5 +----
 drivers/irqchip/irq-digicolor.c                  |    5 +----
 drivers/irqchip/irq-mvebu-gicp.c                 |    5 +----
 drivers/irqchip/irq-mvebu-icu.c                  |    5 +----
 drivers/irqchip/irq-mvebu-odmi.c                 |    5 +----
 drivers/irqchip/irq-mvebu-pic.c                  |    6 +-----
 drivers/irqchip/irq-ompic.c                      |    6 +-----
 drivers/irqchip/irq-orion.c                      |    5 +----
 drivers/irqchip/irq-sun4i.c                      |    5 +----
 drivers/irqchip/irq-sunxi-nmi.c                  |    5 +----
 drivers/irqchip/irq-ts4800.c                     |    5 +----
 drivers/irqchip/irqchip.c                        |    5 +----
 drivers/irqchip/spear-shirq.c                    |    5 +----
 drivers/media/platform/ti/omap/omap_vout_vrfb.c  |    6 +-----
 drivers/media/platform/ti/omap/omap_vout_vrfb.h  |    6 +-----
 drivers/media/platform/ti/omap/omap_voutdef.h    |    5 +----
 drivers/media/platform/ti/omap/omap_voutlib.h    |    7 +------
 drivers/media/radio/si4713/si4713.h              |    6 +-----
 drivers/mmc/host/moxart-mmc.c                    |    5 +----
 drivers/mmc/host/sdhci-pic32.c                   |    5 +----
 drivers/mmc/host/sdhci-spear.c                   |    5 +----
 drivers/mtd/nand/raw/tmio_nand.c                 |    7 +------
 drivers/net/can/c_can/c_can.h                    |    5 +----
 drivers/net/can/c_can/c_can_main.c               |    5 +----
 drivers/net/can/c_can/c_can_pci.c                |    5 +----
 drivers/net/can/c_can/c_can_platform.c           |    5 +----
 drivers/net/can/ifi_canfd/ifi_canfd.c            |    5 +----
 69 files changed, 78 insertions(+), 303 deletions(-)

--- a/arch/powerpc/include/asm/mpc52xx.h
+++ b/arch/powerpc/include/asm/mpc52xx.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Prototypes, etc. for the Freescale MPC52xx embedded cpu chips
  * May need to be cleaned as the port goes on ...
  *
  * Copyright (C) 2004-2005 Sylvain Munaut <tnt@246tNt.com>
  * Copyright (C) 2003 MontaVista, Software, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #ifndef __ASM_POWERPC_MPC52xx_H__
@@ -362,4 +359,3 @@ int __init lite5200_pm_init(void);
 #endif /* CONFIG_PM */
 
 #endif /* __ASM_POWERPC_MPC52xx_H__ */
-
--- a/arch/powerpc/include/asm/mpc52xx_psc.h
+++ b/arch/powerpc/include/asm/mpc52xx_psc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * include/asm-ppc/mpc52xx_psc.h
  *
@@ -5,7 +6,6 @@
  * PSCs. Theses are shared between multiple drivers since a PSC can be
  * UART, AC97, IR, I2S, ... So this header is in asm-ppc.
  *
- *
  * Maintainer : Sylvain Munaut <tnt@246tNt.com>
  *
  * Based/Extracted from some header of the 2.4 originally written by
@@ -13,10 +13,6 @@
  *
  * Copyright (C) 2004 Sylvain Munaut <tnt@246tNt.com>
  * Copyright (C) 2003 MontaVista, Software, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #ifndef __ASM_MPC52xx_PSC_H__
--- a/arch/powerpc/include/asm/rheap.h
+++ b/arch/powerpc/include/asm/rheap.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * include/asm-ppc/rheap.h
  *
@@ -5,10 +6,7 @@
  *
  * Author: Pantelis Antoniou <panto@intracom.gr>
  *
- * 2004 (c) INTRACOM S.A. Greece. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2004 (c) INTRACOM S.A.
  */
 
 #ifndef __ASM_PPC_RHEAP_H__
--- a/arch/powerpc/lib/rheap.c
+++ b/arch/powerpc/lib/rheap.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * A Remote Heap.  Remote means that we don't touch the memory that the
  * heap points to. Normal heap implementations use the memory they manage
@@ -7,10 +8,7 @@
  *
  * Author: Pantelis Antoniou <panto@intracom.gr>
  *
- * 2004 (c) INTRACOM S.A. Greece. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2004 (c) INTRACOM S.A.
  */
 #include <linux/types.h>
 #include <linux/errno.h>
@@ -744,4 +742,3 @@ void rh_dump_blk(rh_info_t * info, rh_bl
 	       blk, blk->start, blk->start + blk->size, blk->size);
 }
 EXPORT_SYMBOL_GPL(rh_dump_blk);
-
--- a/arch/powerpc/platforms/52xx/efika.c
+++ b/arch/powerpc/platforms/52xx/efika.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Efika 5K2 platform code
  * Some code really inspired from the lite5200b platform.
  *
  * Copyright (C) 2006 bplan GmbH
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/init.h>
@@ -231,4 +228,3 @@ define_machine(efika)
 	.phys_mem_access_prot	= pci_phys_mem_access_prot,
 #endif
 };
-
--- a/arch/powerpc/platforms/52xx/mpc52xx_common.c
+++ b/arch/powerpc/platforms/52xx/mpc52xx_common.c
@@ -1,13 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
- *
  * Utility functions for the Freescale MPC52xx.
  *
  * Copyright (C) 2006 Sylvain Munaut <tnt@246tNt.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 #undef DEBUG
--- a/arch/powerpc/platforms/52xx/mpc52xx_pci.c
+++ b/arch/powerpc/platforms/52xx/mpc52xx_pci.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * PCI code for the Freescale MPC52xx embedded CPU.
  *
  * Copyright (C) 2006 Secret Lab Technologies Ltd.
  *                        Grant Likely <grant.likely@secretlab.ca>
  * Copyright (C) 2004 Sylvain Munaut <tnt@246tNt.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #undef DEBUG
--- a/arch/powerpc/platforms/52xx/mpc52xx_pic.c
+++ b/arch/powerpc/platforms/52xx/mpc52xx_pic.c
@@ -1,5 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
- *
  * Programmable Interrupt Controller functions for the Freescale MPC52xx.
  *
  * Copyright (C) 2008 Secret Lab Technologies Ltd.
@@ -9,11 +9,6 @@
  *
  * Based on the code from the 2.4 kernel by
  * Dale Farnsworth <dfarnsworth@mvista.com> and Kent Borg.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 /*
--- a/arch/powerpc/platforms/85xx/ksi8560.c
+++ b/arch/powerpc/platforms/85xx/ksi8560.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Board setup routines for the Emerson KSI8560
  *
@@ -5,11 +6,7 @@
  *
  * Based on mpc85xx_ads.c maintained by Kumar Gala
  *
- * 2008 (c) MontaVista, Software, Inc.  This file is licensed under
- * the terms of the GNU General Public License version 2.  This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
- *
+ * 2008 (c) MontaVista, Software, Inc.
  */
 
 #include <linux/stddef.h>
--- a/arch/powerpc/platforms/85xx/p1022_ds.c
+++ b/arch/powerpc/platforms/85xx/p1022_ds.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * P1022DS board specific routines
  *
@@ -10,10 +11,6 @@
  * This file is taken from the Freescale P1022DS BSP, with modifications:
  * 2) No AMP support
  * 3) No PCI endpoint support
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/fsl/guts.h>
--- a/arch/powerpc/platforms/85xx/p1022_rdk.c
+++ b/arch/powerpc/platforms/85xx/p1022_rdk.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * P1022 RDK board specific routines
  *
@@ -6,10 +7,6 @@
  * Author: Timur Tabi <timur@freescale.com>
  *
  * Based on p1022_ds.c
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/fsl/guts.h>
--- a/arch/powerpc/platforms/8xx/ep88xc.c
+++ b/arch/powerpc/platforms/8xx/ep88xc.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Platform setup for the Embedded Planet EP88xC board
  *
  * Author: Scott Wood <scottwood@freescale.com>
  * Copyright 2007 Freescale Semiconductor, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/arch/powerpc/platforms/8xx/mpc86xads.h
+++ b/arch/powerpc/platforms/8xx/mpc86xads.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * A collection of structures, addresses, and values associated with
  * the Freescale MPC86xADS board.
@@ -6,9 +7,7 @@
  * Author: MontaVista Software, Inc.
  *         source@mvista.com
  *
- * 2005 (c) MontaVista Software, Inc.  This file is licensed under the
- * terms of the GNU General Public License version 2.  This program is licensed
- * "as is" without any warranty of any kind, whether express or implied.
+ * 2005 (c) MontaVista Software, Inc.
  */
 
 #ifdef __KERNEL__
--- a/arch/powerpc/platforms/8xx/mpc86xads_setup.c
+++ b/arch/powerpc/platforms/8xx/mpc86xads_setup.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*arch/powerpc/platforms/8xx/mpc86xads_setup.c
  *
  * Platform setup for the Freescale mpc86xads board
@@ -8,10 +9,6 @@
  *
  * Heavily modified by Scott Wood <scottwood@freescale.com>
  * Copyright 2007 Freescale Semiconductor, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/arch/powerpc/platforms/8xx/mpc885ads.h
+++ b/arch/powerpc/platforms/8xx/mpc885ads.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * A collection of structures, addresses, and values associated with
  * the Freescale MPC885ADS board.
@@ -6,9 +7,7 @@
  * Author: MontaVista Software, Inc.
  *         source@mvista.com
  *
- * 2005 (c) MontaVista Software, Inc.  This file is licensed under the
- * terms of the GNU General Public License version 2.  This program is licensed
- * "as is" without any warranty of any kind, whether express or implied.
+ * 2005 (c) MontaVista Software, Inc.
  */
 
 #ifdef __KERNEL__
--- a/arch/powerpc/platforms/8xx/mpc885ads_setup.c
+++ b/arch/powerpc/platforms/8xx/mpc885ads_setup.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Platform setup for the Freescale mpc885ads board
  *
@@ -7,10 +8,6 @@
  *
  * Heavily modified by Scott Wood <scottwood@freescale.com>
  * Copyright 2007 Freescale Semiconductor, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/arch/powerpc/platforms/8xx/mpc8xx.h
+++ b/arch/powerpc/platforms/8xx/mpc8xx.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Prototypes, etc. for the Freescale MPC8xx embedded cpu chips
  * May need to be cleaned as the port goes on ...
  *
  * Copyright (C) 2008 Jochen Friedrich <jochen@scram.de>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 #ifndef __MPC8xx_H
 #define __MPC8xx_H
--- a/arch/powerpc/platforms/8xx/tqm8xx_setup.c
+++ b/arch/powerpc/platforms/8xx/tqm8xx_setup.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Platform setup for the MPC8xx based boards from TQM.
  *
@@ -11,10 +12,6 @@
  *
  * Heavily modified by Scott Wood <scottwood@freescale.com>
  * Copyright 2007 Freescale Semiconductor, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/arch/powerpc/platforms/embedded6xx/linkstation.c
+++ b/arch/powerpc/platforms/embedded6xx/linkstation.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Board setup routines for the Buffalo Linkstation / Kurobox Platform.
  *
  * Copyright (C) 2006 G. Liakhovetski (g.liakhovetski@gmx.de)
  *
  * Based on sandpoint.c by Mark A. Greer
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of
- * any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/powerpc/platforms/embedded6xx/ls_uart.c
+++ b/arch/powerpc/platforms/embedded6xx/ls_uart.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AVR power-management chip interface for the Buffalo Linkstation /
  * Kurobox Platform.
  *
  * Author: 2006 (c) G. Liakhovetski
  *	 g.liakhovetski@gmx.de
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of
- * any kind, whether express or implied.
  */
 #include <linux/workqueue.h>
 #include <linux/string.h>
--- a/arch/powerpc/platforms/embedded6xx/mpc10x.h
+++ b/arch/powerpc/platforms/embedded6xx/mpc10x.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Common routines for the Motorola SPS MPC106/8240/107 Host bridge/Mem
  * ctlr/EPIC/etc.
@@ -5,10 +6,7 @@
  * Author: Mark A. Greer
  *         mgreer@mvista.com
  *
- * 2001 (c) MontaVista, Software, Inc.  This file is licensed under
- * the terms of the GNU General Public License version 2.  This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2001 (c) MontaVista, Software, Inc.
  */
 #ifndef __PPC_KERNEL_MPC10X_H
 #define __PPC_KERNEL_MPC10X_H
--- a/arch/powerpc/platforms/embedded6xx/storcenter.c
+++ b/arch/powerpc/platforms/embedded6xx/storcenter.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Board setup routines for the storcenter
  *
@@ -5,10 +6,6 @@
  * Copyright 2007 Andy Wilcox, Jon Loeliger
  *
  * Based on linkstation.c by G. Liakhovetski
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of
- * any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/arch/powerpc/sysdev/cpm2.c
+++ b/arch/powerpc/sysdev/cpm2.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * General Purpose functions for the global management of the
  * 8260 Communication Processor Module.
@@ -8,10 +9,6 @@
  * 2006 (c) MontaVista Software, Inc.
  * Vitaly Bordug <vbordug@ru.mvista.com>
  * 	Merged to arch/powerpc from arch/ppc/syslib/cpm2_common.c
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 /*
--- a/arch/powerpc/sysdev/cpm2_pic.c
+++ b/arch/powerpc/sysdev/cpm2_pic.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Platform information definitions.
  *
@@ -8,10 +9,6 @@
  *
  * 1999-2001 (c) Dan Malek <dan@embeddedalley.com>
  * 2006 (c) MontaVista Software, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 /* The CPM2 internal interrupt controller.  It is usually
--- a/arch/powerpc/sysdev/ehv_pic.c
+++ b/arch/powerpc/sysdev/ehv_pic.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  *  Driver for ePAPR Embedded Hypervisor PIC
  *
  *  Copyright 2008-2011 Freescale Semiconductor, Inc.
  *
  *  Author: Ashish Kalra <ashish.kalra@freescale.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/types.h>
--- a/arch/powerpc/sysdev/ge/ge_pic.c
+++ b/arch/powerpc/sysdev/ge/ge_pic.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Interrupt handling for GE FPGA based PIC
  *
  * Author: Martyn Welch <martyn.welch@ge.com>
  *
  * 2008 (c) GE Intelligent Platforms Embedded Systems, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/stddef.h>
@@ -250,4 +247,3 @@ unsigned int gef_pic_get_irq(void)
 
 	return virq;
 }
-
--- a/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_scaler.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 Jernej Skrabec <jernej.skrabec@siol.net>
  *
  * Coefficients are taken from BSP driver, which is:
  * Copyright (C) 2014-2015 Allwinner
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include "sun8i_ui_scaler.h"
--- a/drivers/gpu/drm/sun4i/sun8i_ui_scaler.h
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_scaler.h
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2017 Jernej Skrabec <jernej.skrabec@siol.net>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2017 Jernej Skrabec <jernej.skrabec@siol.net> */
 
 #ifndef _SUN8I_UI_SCALER_H_
 #define _SUN8I_UI_SCALER_H_
--- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 Jernej Skrabec <jernej.skrabec@siol.net>
  *
  * Coefficients are taken from BSP driver, which is:
  * Copyright (C) 2014-2015 Allwinner
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include "sun8i_vi_scaler.h"
--- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.h
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.h
@@ -1,10 +1,5 @@
-/*
- * Copyright (C) 2017 Jernej Skrabec <jernej.skrabec@siol.net>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2017 Jernej Skrabec <jernej.skrabec@siol.net> */
 
 #ifndef _SUN8I_VI_SCALER_H_
 #define _SUN8I_VI_SCALER_H_
--- a/drivers/i2c/busses/i2c-octeon-core.c
+++ b/drivers/i2c/busses/i2c-octeon-core.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * (C) Copyright 2009-2010
  * Nokia Siemens Networks, michael.lawnick.ext@nsn.com
@@ -6,10 +7,6 @@
  *
  * This file contains the shared part of the driver for the i2c adapter in
  * Cavium Networks' OCTEON processors and ThunderX SOCs.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/delay.h>
--- a/drivers/i2c/busses/i2c-sun6i-p2wi.c
+++ b/drivers/i2c/busses/i2c-sun6i-p2wi.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * P2WI (Push-Pull Two Wire Interface) bus driver.
  *
  * Author: Boris BREZILLON <boris.brezillon@free-electrons.com>
  *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  * The P2WI controller looks like an SMBus controller which only supports byte
  * data transfers. But, it differs from standard SMBus protocol on several
  * aspects:
@@ -19,7 +16,6 @@
  * This means this bus cannot be used to interface with standard SMBus
  * devices (the only known device to support this interface is the AXP221
  * PMIC).
- *
  */
 #include <linux/clk.h>
 #include <linux/i2c.h>
--- a/drivers/i2c/busses/i2c-xlp9xx.c
+++ b/drivers/i2c/busses/i2c-xlp9xx.c
@@ -1,10 +1,5 @@
-/*
- * Copyright (c) 2003-2015 Broadcom Corporation
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2003-2015 Broadcom Corporation
 
 #include <linux/acpi.h>
 #include <linux/clk.h>
--- a/drivers/i2c/i2c-mux.c
+++ b/drivers/i2c/i2c-mux.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Multiplexed I2C bus driver.
  *
@@ -13,10 +14,6 @@
  *	i2c-virt.c from Kumar Gala <galak@kernel.crashing.org>
  *	i2c-virtual.c from Ken Harrenstien, Copyright (c) 2004 Google, Inc.
  *	i2c-virtual.c from Brian Kuschak <bkuschak@yahoo.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/acpi.h>
--- a/drivers/i2c/muxes/i2c-mux-pca9541.c
+++ b/drivers/i2c/muxes/i2c-mux-pca9541.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * I2C multiplexer driver for PCA9541 bus master selector
  *
@@ -10,10 +11,6 @@
  *
  *  Copyright (c) 2008-2009 Rodolfo Giometti <giometti@linux.it>
  *  Copyright (c) 2008-2009 Eurotech S.p.A. <info@eurotech.it>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/bitops.h>
--- a/drivers/iio/adc/berlin2-adc.c
+++ b/drivers/iio/adc/berlin2-adc.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Berlin2 ADC driver
  *
  * Copyright (C) 2015 Marvell Technology Group Ltd.
  *
  * Antoine Tenart <antoine.tenart@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/iio/iio.h>
--- a/drivers/input/touchscreen/ts4800-ts.c
+++ b/drivers/input/touchscreen/ts4800-ts.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Touchscreen driver for the TS-4800 board
  *
  * Copyright (c) 2015 - Savoir-faire Linux
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/bitops.h>
--- a/drivers/irqchip/irq-alpine-msi.c
+++ b/drivers/irqchip/irq-alpine-msi.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Annapurna Labs MSIX support services
  *
  * Copyright (C) 2016, Amazon.com, Inc. or its affiliates. All Rights Reserved.
  *
  * Antoine Tenart <antoine.tenart@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
--- a/drivers/irqchip/irq-armada-370-xp.c
+++ b/drivers/irqchip/irq-armada-370-xp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Armada 370 and Armada XP SoC IRQ handling
  *
@@ -7,10 +8,6 @@
  * Gregory CLEMENT <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  * Ben Dooks <ben.dooks@codethink.co.uk>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/drivers/irqchip/irq-atmel-aic-common.c
+++ b/drivers/irqchip/irq-atmel-aic-common.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Atmel AT91 common AIC (Advanced Interrupt Controller) code shared by
  * irq-atmel-aic and irq-atmel-aic5 drivers
@@ -8,10 +9,6 @@
  *  Copyright (C) 2014 Free Electrons
  *
  *  Author: Boris BREZILLON <boris.brezillon@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/errno.h>
--- a/drivers/irqchip/irq-atmel-aic-common.h
+++ b/drivers/irqchip/irq-atmel-aic-common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Atmel AT91 common AIC (Advanced Interrupt Controller) header file
  *
@@ -7,10 +8,6 @@
  *  Copyright (C) 2014 Free Electrons
  *
  *  Author: Boris BREZILLON <boris.brezillon@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __IRQ_ATMEL_AIC_COMMON_H
--- a/drivers/irqchip/irq-atmel-aic.c
+++ b/drivers/irqchip/irq-atmel-aic.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Atmel AT91 AIC (Advanced Interrupt Controller) driver
  *
@@ -7,10 +8,6 @@
  *  Copyright (C) 2014 Free Electrons
  *
  *  Author: Boris BREZILLON <boris.brezillon@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/drivers/irqchip/irq-atmel-aic5.c
+++ b/drivers/irqchip/irq-atmel-aic5.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Atmel AT91 AIC5 (Advanced Interrupt Controller) driver
  *
@@ -7,10 +8,6 @@
  *  Copyright (C) 2014 Free Electrons
  *
  *  Author: Boris BREZILLON <boris.brezillon@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/init.h>
--- a/drivers/irqchip/irq-digicolor.c
+++ b/drivers/irqchip/irq-digicolor.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Conexant Digicolor SoCs IRQ chip driver
  *
  * Author: Baruch Siach <baruch@tkos.co.il>
  *
  * Copyright (C) 2014 Paradox Innovation Ltd.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/io.h>
--- a/drivers/irqchip/irq-mvebu-gicp.c
+++ b/drivers/irqchip/irq-mvebu-gicp.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 Marvell
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/io.h>
--- a/drivers/irqchip/irq-mvebu-icu.c
+++ b/drivers/irqchip/irq-mvebu-icu.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 Marvell
  *
  * Hanna Hawa <hannah@marvell.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/interrupt.h>
--- a/drivers/irqchip/irq-mvebu-odmi.c
+++ b/drivers/irqchip/irq-mvebu-odmi.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2016 Marvell
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "GIC-ODMI: " fmt
--- a/drivers/irqchip/irq-mvebu-pic.c
+++ b/drivers/irqchip/irq-mvebu-pic.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2016 Marvell
  *
  * Yehuda Yitschak <yehuday@marvell.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/interrupt.h>
@@ -197,4 +194,3 @@ MODULE_AUTHOR("Yehuda Yitschak <yehuday@
 MODULE_AUTHOR("Thomas Petazzoni <thomas.petazzoni@free-electrons.com>");
 MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:mvebu_pic");
-
--- a/drivers/irqchip/irq-ompic.c
+++ b/drivers/irqchip/irq-ompic.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Open Multi-Processor Interrupt Controller driver
  *
  * Copyright (C) 2014 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
  * Copyright (C) 2017 Stafford Horne <shorne@gmail.com>
  *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  * The ompic device handles IPI communication between cores in multi-core
  * OpenRISC systems.
  *
@@ -55,7 +52,6 @@
  *   | ompic  |<===/    | Device |<===/
  *   |  IPI   |         +--------+
  *   +--------+*
- *
  */
 
 #include <linux/io.h>
--- a/drivers/irqchip/irq-orion.c
+++ b/drivers/irqchip/irq-orion.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Orion SoCs IRQ chip driver.
  *
  * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/io.h>
--- a/drivers/irqchip/irq-sun4i.c
+++ b/drivers/irqchip/irq-sun4i.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Allwinner A1X SoCs IRQ chip driver.
  *
@@ -8,10 +9,6 @@
  * Based on code from
  * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
  * Benn Huang <benn@allwinnertech.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/io.h>
--- a/drivers/irqchip/irq-sunxi-nmi.c
+++ b/drivers/irqchip/irq-sunxi-nmi.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Allwinner A20/A31 SoCs NMI IRQ chip driver.
  *
  * Carlo Caione <carlo.caione@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define DRV_NAME	"sunxi-nmi"
--- a/drivers/irqchip/irq-ts4800.c
+++ b/drivers/irqchip/irq-ts4800.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Multiplexed-IRQs driver for TS-4800's FPGA
  *
  * Copyright (c) 2015 - Savoir-faire Linux
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/interrupt.h>
--- a/drivers/irqchip/irqchip.c
+++ b/drivers/irqchip/irqchip.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 Thomas Petazzoni
  *
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/acpi.h>
--- a/drivers/irqchip/spear-shirq.c
+++ b/drivers/irqchip/spear-shirq.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SPEAr platform shared irq layer source file
  *
@@ -6,10 +7,6 @@
  *
  * Copyright (C) 2012 ST Microelectronics
  * Shiraz Hashim <shiraz.linux.kernel@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
--- a/drivers/media/platform/ti/omap/omap_vout_vrfb.c
+++ b/drivers/media/platform/ti/omap/omap_vout_vrfb.c
@@ -1,12 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * omap_vout_vrfb.c
  *
  * Copyright (C) 2010 Texas Instruments.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 #include <linux/sched.h>
--- a/drivers/media/platform/ti/omap/omap_vout_vrfb.h
+++ b/drivers/media/platform/ti/omap/omap_vout_vrfb.h
@@ -1,12 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * omap_vout_vrfb.h
  *
  * Copyright (C) 2010 Texas Instruments.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 #ifndef OMAP_VOUT_VRFB_H
--- a/drivers/media/platform/ti/omap/omap_voutdef.h
+++ b/drivers/media/platform/ti/omap/omap_voutdef.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * omap_voutdef.h
  *
  * Copyright (C) 2010 Texas Instruments.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #ifndef OMAP_VOUTDEF_H
--- a/drivers/media/platform/ti/omap/omap_voutlib.h
+++ b/drivers/media/platform/ti/omap/omap_voutlib.h
@@ -1,12 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * omap_voutlib.h
  *
  * Copyright (C) 2010 Texas Instruments.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 #ifndef OMAP_VOUTLIB_H
@@ -36,4 +32,3 @@ void omap_vout_free_buffer(unsigned long
 bool omap_vout_dss_omap24xx(void);
 bool omap_vout_dss_omap34xx(void);
 #endif	/* #ifndef OMAP_VOUTLIB_H */
-
--- a/drivers/media/radio/si4713/si4713.h
+++ b/drivers/media/radio/si4713/si4713.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * drivers/media/radio/si4713-i2c.h
  *
@@ -5,11 +6,6 @@
  *
  * Copyright (c) 2008 Instituto Nokia de Tecnologia - INdT
  * Contact: Eduardo Valentin <eduardo.valentin@nokia.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  */
 
 #ifndef SI4713_I2C_H
--- a/drivers/mmc/host/moxart-mmc.c
+++ b/drivers/mmc/host/moxart-mmc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * MOXA ART MMC host driver.
  *
@@ -7,10 +8,6 @@
  *
  * Based on code from
  * Moxa Technologies Co., Ltd. <www.moxa.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/module.h>
--- a/drivers/mmc/host/sdhci-pic32.c
+++ b/drivers/mmc/host/sdhci-pic32.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Support of SDHCI platform devices for Microchip PIC32.
  *
@@ -5,10 +6,6 @@
  * Andrei Pistirica, Paul Thacker
  *
  * Inspired by sdhci-pltfm.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/mmc/host/sdhci-spear.c
+++ b/drivers/mmc/host/sdhci-spear.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * drivers/mmc/host/sdhci-spear.c
  *
@@ -7,10 +8,6 @@
  * Viresh Kumar <vireshk@kernel.org>
  *
  * Inspired by sdhci-pltfm.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/mtd/nand/raw/tmio_nand.c
+++ b/drivers/mtd/nand/raw/tmio_nand.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Toshiba TMIO NAND flash controller driver
  *
@@ -14,12 +15,6 @@
  *    Minor fixes
  *
  * Parts copyright Sebastian Carlier
- *
- * This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
- *
  */
 
 
--- a/drivers/net/can/c_can/c_can.h
+++ b/drivers/net/can/c_can/c_can.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * CAN bus driver for Bosch C_CAN controller
  *
@@ -13,10 +14,6 @@
  * Bosch C_CAN user manual can be obtained from:
  * http://www.semiconductors.bosch.de/media/en/pdf/ipmodules_1/c_can/
  * users_manual_c_can.pdf
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef C_CAN_H
--- a/drivers/net/can/c_can/c_can_main.c
+++ b/drivers/net/can/c_can/c_can_main.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * CAN bus driver for Bosch C_CAN controller
  *
@@ -19,10 +20,6 @@
  * Bosch C_CAN user manual can be obtained from:
  * http://www.semiconductors.bosch.de/media/en/pdf/ipmodules_1/c_can/
  * users_manual_c_can.pdf
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/can/c_can/c_can_pci.c
+++ b/drivers/net/can/c_can/c_can_pci.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * PCI bus driver for Bosch C_CAN/D_CAN controller
  *
  * Copyright (C) 2012 Federico Vaga <federico.vaga@gmail.com>
  *
  * Borrowed from c_can_platform.c
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/can/c_can/c_can_platform.c
+++ b/drivers/net/can/c_can/c_can_platform.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Platform CAN bus driver for Bosch C_CAN controller
  *
@@ -13,10 +14,6 @@
  * Bosch C_CAN user manual can be obtained from:
  * http://www.semiconductors.bosch.de/media/en/pdf/ipmodules_1/c_can/
  * users_manual_c_can.pdf
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/can/ifi_canfd/ifi_canfd.c
+++ b/drivers/net/can/ifi_canfd/ifi_canfd.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * CAN bus driver for IFI CANFD controller
  *
@@ -5,10 +6,6 @@
  *
  * Details about this controller can be found at
  * http://www.ifi-pld.de/IP/CANFD/canfd.html
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>

