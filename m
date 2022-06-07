Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 234C65405DB
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 19:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346725AbiFGRcL (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 13:32:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348144AbiFGRbg (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 13:31:36 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F564115A62
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:29:35 -0700 (PDT)
Message-ID: <20220607172732.141540259@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654622973;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=zzPPRWvVK32cnkcv9+4Siw83ZBvYBHy2KIEfj9hPKSk=;
        b=udmF3MTG7yIleha3HWlREZcwZ1MZ5SgugxLIk/29E7zbFTllkoIYCLuv5mixIXM84Mbt8I
        dJ1mh98yOu3roQr6ypPvfVkJgjt9cLztV3MogMg+gqpDht8kbfCKxh96wLlPF3GIsUb8DS
        yn+qp7Dsyw8PWzs/UCz4ssINuMZDm40EKY/xFOrQmTYkmb+o3Wb6XjnZFL9VdyRLvW4j4q
        NUQPXMqzbm+lcxo9QwpOfylTTxOydt4nPQRLZ1smHh28zre64VzSQU9O0bTKN40Vfzuskb
        GccAs4HNe6Yaz3cxxv+azOJvK9ZmhJLfx6oq7fqC3VuyjDMMxSDxG+CMA3d8rg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654622973;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=zzPPRWvVK32cnkcv9+4Siw83ZBvYBHy2KIEfj9hPKSk=;
        b=8Z9hgjjY8Wet2Mak3naiardaTFzcFH3ztDyeRo3Qrs8DeTT0raF6Drj4+CHWgo4gEzfYcO
        w5AWYaY95iL3q2Cw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 5/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_56.RULE (part 2)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 19:29:33 +0200 (CEST)
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
 drivers/bus/mvebu-mbus.c            |    5 +----
 drivers/bus/sunxi-rsb.c             |    6 +-----
 drivers/bus/tegra-gmi.c             |    5 +----
 drivers/bus/ts-nbus.c               |    5 +----
 drivers/clk/axs10x/i2s_pll_clock.c  |    5 +----
 drivers/clk/axs10x/pll_clock.c      |    5 +----
 drivers/clk/clk-hsdk-pll.c          |    5 +----
 drivers/clk/clk-moxart.c            |    5 +----
 drivers/clk/mmp/clk-apbc.c          |    5 +----
 drivers/clk/mmp/clk-apmu.c          |    5 +----
 drivers/clk/mmp/clk-frac.c          |    5 +----
 drivers/clk/mmp/clk-gate.c          |    5 +----
 drivers/clk/mmp/clk-mix.c           |    5 +----
 drivers/clk/mmp/clk-mmp2.c          |    5 +----
 drivers/clk/mmp/clk-of-mmp2.c       |    5 +----
 drivers/clk/mmp/clk-of-pxa168.c     |    5 +----
 drivers/clk/mmp/clk-of-pxa1928.c    |    5 +----
 drivers/clk/mmp/clk-of-pxa910.c     |    5 +----
 drivers/clk/mmp/clk-pxa168.c        |    5 +----
 drivers/clk/mmp/clk-pxa910.c        |    5 +----
 drivers/clk/nxp/clk-lpc18xx-ccu.c   |    5 +----
 drivers/clk/nxp/clk-lpc18xx-cgu.c   |    5 +----
 drivers/clk/nxp/clk-lpc18xx-creg.c  |    5 +----
 drivers/clk/spear/clk-aux-synth.c   |    5 +----
 drivers/clk/spear/clk-frac-synth.c  |    5 +----
 drivers/clk/spear/clk-gpt-synth.c   |    5 +----
 drivers/clk/spear/clk-vco-pll.c     |    5 +----
 drivers/clk/spear/clk.c             |    5 +----
 drivers/clk/spear/clk.h             |    5 +----
 drivers/clk/spear/spear1310_clock.c |    5 +----
 drivers/clk/spear/spear1340_clock.c |    5 +----
 drivers/clk/spear/spear3xx_clock.c  |    5 +----
 drivers/clk/spear/spear6xx_clock.c  |    5 +----
 drivers/cpufreq/mvebu-cpufreq.c     |    5 +----
 drivers/cpuidle/cpuidle-at91.c      |    5 +----
 drivers/cpuidle/cpuidle-kirkwood.c  |    5 +----
 drivers/dma/bestcomm/ata.c          |    7 +------
 drivers/dma/bestcomm/bestcomm.c     |    7 +------
 drivers/dma/bestcomm/fec.c          |    7 +------
 drivers/dma/bestcomm/sram.c         |    7 +------
 drivers/dma/moxart-dma.c            |    5 +----
 drivers/dma/ppc4xx/adma.h           |    5 +----
 drivers/edac/edac_pci.c             |    7 ++-----
 drivers/edac/fsl_ddr_edac.c         |    6 ++----
 drivers/edac/fsl_ddr_edac.h         |    7 ++-----
 drivers/edac/mpc85xx_edac.h         |    7 ++-----
 drivers/gpio/gpio-mpc8xxx.c         |    5 +----
 drivers/gpio/gpio-mvebu.c           |    5 +----
 drivers/gpio/gpio-spear-spics.c     |    5 +----
 drivers/gpio/gpio-ts4800.c          |    5 +----
 50 files changed, 54 insertions(+), 212 deletions(-)

--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Address map functions for Marvell EBU SoCs (Kirkwood, Armada
  * 370/XP, Dove, Orion5x and MV78xx0)
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The Marvell EBU SoCs have a configurable physical address space:
  * the physical address at which certain devices (PCIe, NOR, NAND,
  * etc.) sit can be configured. The configuration takes place through
--- a/drivers/bus/sunxi-rsb.c
+++ b/drivers/bus/sunxi-rsb.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * RSB (Reduced Serial Bus) driver.
  *
  * Author: Chen-Yu Tsai <wens@csie.org>
  *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- *
  * The RSB controller looks like an SMBus controller which only supports
  * byte and word data transfers. But, it differs from standard SMBus
  * protocol on several aspects:
@@ -31,7 +28,6 @@
  * This document is officially released by Allwinner.
  *
  * This driver is based on i2c-sun6i-p2wi.c, the P2WI bus driver.
- *
  */
 
 #include <linux/clk.h>
--- a/drivers/bus/tegra-gmi.c
+++ b/drivers/bus/tegra-gmi.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Driver for NVIDIA Generic Memory Interface
  *
  * Copyright (C) 2016 Host Mobility AB. All rights reserved.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NBUS driver for TS-4600 based boards
  *
  * Copyright (c) 2016 - Savoir-faire Linux
  * Author: Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * This driver implements a GPIOs bit-banged bus, called the NBUS by Technologic
  * Systems. It is used to communicate with the peripherals in the FPGA on the
  * TS-4600 SoM.
--- a/drivers/clk/axs10x/i2s_pll_clock.c
+++ b/drivers/clk/axs10x/i2s_pll_clock.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Synopsys AXS10X SDP I2S PLL clock driver
  *
  * Copyright (C) 2016 Synopsys
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/platform_device.h>
--- a/drivers/clk/axs10x/pll_clock.c
+++ b/drivers/clk/axs10x/pll_clock.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Synopsys AXS10X SDP Generic PLL clock driver
  *
  * Copyright (C) 2017 Synopsys
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/platform_device.h>
--- a/drivers/clk/clk-hsdk-pll.c
+++ b/drivers/clk/clk-hsdk-pll.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Synopsys HSDK SDP Generic PLL clock driver
  *
  * Copyright (C) 2017 Synopsys
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/clk-moxart.c
+++ b/drivers/clk/clk-moxart.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * MOXA ART SoCs clock driver.
  *
  * Copyright (C) 2013 Jonas Jensen
  *
  * Jonas Jensen <jonas.jensen@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/mmp/clk-apbc.c
+++ b/drivers/clk/mmp/clk-apbc.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp APB clock operation source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/mmp/clk-apmu.c
+++ b/drivers/clk/mmp/clk-apmu.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp AXI peripharal clock operation source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/mmp/clk-frac.c
+++ b/drivers/clk/mmp/clk-frac.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp factor clock operation source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/mmp/clk-gate.c
+++ b/drivers/clk/mmp/clk-gate.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp gate clock operation source file
  *
  * Copyright (C) 2014 Marvell
  * Chao Xie <chao.xie@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/mmp/clk-mix.c
+++ b/drivers/clk/mmp/clk-mix.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp mix(div and mux) clock operation source file
  *
  * Copyright (C) 2014 Marvell
  * Chao Xie <chao.xie@marvell.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/mmp/clk-mmp2.c
+++ b/drivers/clk/mmp/clk-mmp2.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp2 clock framework source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/mmp/clk-of-mmp2.c
+++ b/drivers/clk/mmp/clk-of-mmp2.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * mmp2 clock framework source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
  * Copyright (C) 2020 Lubomir Rintel <lkundrak@v3.sk>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/module.h>
--- a/drivers/clk/mmp/clk-of-pxa168.c
+++ b/drivers/clk/mmp/clk-of-pxa168.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * pxa168 clock framework source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/module.h>
--- a/drivers/clk/mmp/clk-of-pxa1928.c
+++ b/drivers/clk/mmp/clk-of-pxa1928.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * pxa1928 clock framework source file
  *
@@ -7,10 +8,6 @@
  * Based on drivers/clk/mmp/clk-of-mmp2.c:
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 #include <linux/kernel.h>
 #include <linux/io.h>
--- a/drivers/clk/mmp/clk-of-pxa910.c
+++ b/drivers/clk/mmp/clk-of-pxa910.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * pxa910 clock framework source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/module.h>
--- a/drivers/clk/mmp/clk-pxa168.c
+++ b/drivers/clk/mmp/clk-pxa168.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * pxa168 clock framework source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/mmp/clk-pxa910.c
+++ b/drivers/clk/mmp/clk-pxa910.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * pxa910 clock framework source file
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/nxp/clk-lpc18xx-ccu.c
+++ b/drivers/clk/nxp/clk-lpc18xx-ccu.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Clk driver for NXP LPC18xx/LPC43xx Clock Control Unit (CCU)
  *
  * Copyright (C) 2015 Joachim Eastwood <manabian@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/nxp/clk-lpc18xx-cgu.c
+++ b/drivers/clk/nxp/clk-lpc18xx-cgu.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Clk driver for NXP LPC18xx/LPC43xx Clock Generation Unit (CGU)
  *
  * Copyright (C) 2015 Joachim Eastwood <manabian@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/nxp/clk-lpc18xx-creg.c
+++ b/drivers/clk/nxp/clk-lpc18xx-creg.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Clk driver for NXP LPC18xx/43xx Configuration Registers (CREG)
  *
  * Copyright (C) 2015 Joachim Eastwood <manabian@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk-provider.h>
--- a/drivers/clk/spear/clk-aux-synth.c
+++ b/drivers/clk/spear/clk-aux-synth.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * Auxiliary Synthesizer clock implementation
  */
 
--- a/drivers/clk/spear/clk-frac-synth.c
+++ b/drivers/clk/spear/clk-frac-synth.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * Fractional Synthesizer clock implementation
  */
 
--- a/drivers/clk/spear/clk-gpt-synth.c
+++ b/drivers/clk/spear/clk-gpt-synth.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * General Purpose Timer Synthesizer clock implementation
  */
 
--- a/drivers/clk/spear/clk-vco-pll.c
+++ b/drivers/clk/spear/clk-vco-pll.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * VCO-PLL clock implementation
  */
 
--- a/drivers/clk/spear/clk.c
+++ b/drivers/clk/spear/clk.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * SPEAr clk - Common routines
  */
 
--- a/drivers/clk/spear/clk.h
+++ b/drivers/clk/spear/clk.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Clock framework definitions for SPEAr platform
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef __SPEAR_CLK_H
--- a/drivers/clk/spear/spear1310_clock.c
+++ b/drivers/clk/spear/spear1310_clock.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear13xx/spear1310_clock.c
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
 
 #include <linux/clkdev.h>
--- a/drivers/clk/spear/spear1340_clock.c
+++ b/drivers/clk/spear/spear1340_clock.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * arch/arm/mach-spear13xx/spear1340_clock.c
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
 
 #include <linux/clkdev.h>
--- a/drivers/clk/spear/spear3xx_clock.c
+++ b/drivers/clk/spear/spear3xx_clock.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SPEAr3xx machines clock framework source file
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clk.h>
--- a/drivers/clk/spear/spear6xx_clock.c
+++ b/drivers/clk/spear/spear6xx_clock.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SPEAr6xx machines clock framework source file
  *
  * Copyright (C) 2012 ST Microelectronics
  * Viresh Kumar <vireshk@kernel.org>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/clkdev.h>
--- a/drivers/cpufreq/mvebu-cpufreq.c
+++ b/drivers/cpufreq/mvebu-cpufreq.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * CPUFreq support for Armada 370/XP platforms.
  *
@@ -6,10 +7,6 @@
  * Yehuda Yitschak <yehuday@marvell.com>
  * Gregory Clement <gregory.clement@free-electrons.com>
  * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #define pr_fmt(fmt) "mvebu-pmsu: " fmt
--- a/drivers/cpuidle/cpuidle-at91.c
+++ b/drivers/cpuidle/cpuidle-at91.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * based on arch/arm/mach-kirkwood/cpuidle.c
  *
  * CPU idle support for AT91 SoC
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The cpu idle uses wait-for-interrupt and RAM self refresh in order
  * to implement two idle states -
  * #1 wait-for-interrupt
--- a/drivers/cpuidle/cpuidle-kirkwood.c
+++ b/drivers/cpuidle/cpuidle-kirkwood.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * CPU idle Marvell Kirkwood SoCs
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * The cpu idle uses wait-for-interrupt and DDR self refresh in order
  * to implement two idle states -
  * #1 wait-for-interrupt
--- a/drivers/dma/bestcomm/ata.c
+++ b/drivers/dma/bestcomm/ata.c
@@ -1,16 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Bestcomm ATA task driver
  *
- *
  * Patterned after bestcomm/fec.c by Dale Farnsworth <dfarnsworth@mvista.com>
  *                                   2003-2004 (c) MontaVista, Software, Inc.
  *
  * Copyright (C) 2006-2007 Sylvain Munaut <tnt@246tNt.com>
  * Copyright (C) 2006      Freescale - John Rigby
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
@@ -154,4 +150,3 @@ EXPORT_SYMBOL_GPL(bcom_ata_release);
 MODULE_DESCRIPTION("BestComm ATA task driver");
 MODULE_AUTHOR("John Rigby");
 MODULE_LICENSE("GPL v2");
-
--- a/drivers/dma/bestcomm/bestcomm.c
+++ b/drivers/dma/bestcomm/bestcomm.c
@@ -1,16 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Driver for MPC52xx processor BestComm peripheral controller
  *
- *
  * Copyright (C) 2006-2007 Sylvain Munaut <tnt@246tNt.com>
  * Copyright (C) 2005      Varma Electronics Oy,
  *                         ( by Andrey Volkov <avolkov@varma-el.com> )
  * Copyright (C) 2003-2004 MontaVista, Software, Inc.
  *                         ( by Dale Farnsworth <dfarnsworth@mvista.com> )
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/module.h>
@@ -528,4 +524,3 @@ MODULE_AUTHOR("Sylvain Munaut <tnt@246tN
 MODULE_AUTHOR("Andrey Volkov <avolkov@varma-el.com>");
 MODULE_AUTHOR("Dale Farnsworth <dfarnsworth@mvista.com>");
 MODULE_LICENSE("GPL v2");
-
--- a/drivers/dma/bestcomm/fec.c
+++ b/drivers/dma/bestcomm/fec.c
@@ -1,14 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Bestcomm FEC tasks driver
  *
- *
  * Copyright (C) 2006-2007 Sylvain Munaut <tnt@246tNt.com>
  * Copyright (C) 2003-2004 MontaVista, Software, Inc.
  *                         ( by Dale Farnsworth <dfarnsworth@mvista.com> )
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/kernel.h>
@@ -267,4 +263,3 @@ EXPORT_SYMBOL_GPL(bcom_fec_tx_release);
 MODULE_DESCRIPTION("BestComm FEC tasks driver");
 MODULE_AUTHOR("Dale Farnsworth <dfarnsworth@mvista.com>");
 MODULE_LICENSE("GPL v2");
-
--- a/drivers/dma/bestcomm/sram.c
+++ b/drivers/dma/bestcomm/sram.c
@@ -1,14 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Simple memory allocator for on-board SRAM
  *
- *
  * Maintainer : Sylvain Munaut <tnt@246tNt.com>
  *
  * Copyright (C) 2005 Sylvain Munaut <tnt@246tNt.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/err.h>
@@ -176,4 +172,3 @@ void bcom_sram_free(void *ptr)
 	spin_unlock(&bcom_sram->lock);
 }
 EXPORT_SYMBOL_GPL(bcom_sram_free);
-
--- a/drivers/dma/moxart-dma.c
+++ b/drivers/dma/moxart-dma.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * MOXA ART SoCs DMA Engine support.
  *
  * Copyright (C) 2013 Jonas Jensen
  *
  * Jonas Jensen <jonas.jensen@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/dmaengine.h>
--- a/drivers/dma/ppc4xx/adma.h
+++ b/drivers/dma/ppc4xx/adma.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * 2006-2009 (C) DENX Software Engineering.
  *
  * Author: Yuri Tikhonov <yur@emcraft.com>
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of
- * any kind, whether express or implied.
  */
 
 #ifndef _PPC440SPE_ADMA_H
--- a/drivers/edac/edac_pci.c
+++ b/drivers/edac/edac_pci.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * EDAC PCI component
  *
  * Author: Dave Jiang <djiang@mvista.com>
  *
- * 2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
- *
+ * 2007 (c) MontaVista Software, Inc.
  */
 #include <asm/page.h>
 #include <linux/uaccess.h>
--- a/drivers/edac/fsl_ddr_edac.c
+++ b/drivers/edac/fsl_ddr_edac.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Freescale Memory Controller kernel module
  *
@@ -9,10 +10,7 @@
  *
  * Author: Dave Jiang <djiang@mvista.com>
  *
- * 2006-2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
+ * 2006-2007 (c) MontaVista Software, Inc.
  */
 #include <linux/module.h>
 #include <linux/init.h>
--- a/drivers/edac/fsl_ddr_edac.h
+++ b/drivers/edac/fsl_ddr_edac.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Freescale Memory Controller kernel module
  *
@@ -7,11 +8,7 @@
  *
  * Author: Dave Jiang <djiang@mvista.com>
  *
- * 2006-2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
- *
+ * 2006-2007 (c) MontaVista Software, Inc.
  */
 #ifndef _FSL_DDR_EDAC_H_
 #define _FSL_DDR_EDAC_H_
--- a/drivers/edac/mpc85xx_edac.h
+++ b/drivers/edac/mpc85xx_edac.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Freescale MPC85xx Memory Controller kernel module
  * Author: Dave Jiang <djiang@mvista.com>
  *
- * 2006-2007 (c) MontaVista Software, Inc. This file is licensed under
- * the terms of the GNU General Public License version 2. This program
- * is licensed "as is" without any warranty of any kind, whether express
- * or implied.
- *
+ * 2006-2007 (c) MontaVista Software, Inc.
  */
 #ifndef _MPC85XX_EDAC_H_
 #define _MPC85XX_EDAC_H_
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * GPIOs on MPC512x/8349/8572/8610/QorIQ and compatible
  *
  * Copyright (C) 2008 Peter Korsgaard <jacmet@sunsite.dk>
  * Copyright (C) 2016 Freescale Semiconductor Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2.  This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/acpi.h>
--- a/drivers/gpio/gpio-mvebu.c
+++ b/drivers/gpio/gpio-mvebu.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * GPIO driver for Marvell SoCs
  *
@@ -7,10 +8,6 @@
  * Andrew Lunn <andrew@lunn.ch>
  * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
  *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
- *
  * This driver is a fairly straightforward GPIO driver for the
  * complete family of Marvell EBU SoC platforms (Orion, Dove,
  * Kirkwood, Discovery, Armada 370/XP). The only complexity of this
--- a/drivers/gpio/gpio-spear-spics.c
+++ b/drivers/gpio/gpio-spear-spics.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SPEAr platform SPI chipselect abstraction over gpiolib
  *
  * Copyright (C) 2012 ST Microelectronics
  * Shiraz Hashim <shiraz.linux.kernel@gmail.com>
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/err.h>
--- a/drivers/gpio/gpio-ts4800.c
+++ b/drivers/gpio/gpio-ts4800.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * GPIO driver for the TS-4800 board
  *
  * Copyright (c) 2016 - Savoir-faire Linux
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/gpio/driver.h>

