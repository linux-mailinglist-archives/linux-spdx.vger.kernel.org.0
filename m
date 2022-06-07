Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E4B5400C9
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245127AbiFGOLU (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245139AbiFGOLS (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:18 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA858A26F7
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:13 -0700 (PDT)
Message-ID: <20220607131510.477785405@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611072;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=1M+Kzu1iXrazqNpAhphTWIrMwCAlLHvQ0LelJZN8q+Q=;
        b=nOiqWn402071KRNJHw8NXpkkqyDk6zPpXKRuYOdO/kCOtP9EatwuO9BM3EZpNv904R577u
        fVMg6ePsNcS2tXvdoy9SIPTeZXcyq3Zeo8+TaS4RSKa6vVu8zDqFDQQt7vFB2Itqp1v9ih
        n1+gEZ1eThX0GxSjVoimv7WpbVctJg6B2HVYdoonbtQ3o8JNxUadH/dw5O3ha+07n8NzLD
        vR9pM8yDuqytGbx5ijlrGnOUe+GLPweT+YcmzUu+F+RRWfwfcnHANbMuHqcxUY2cvSa3zn
        Cvz1+ZIOoRl8sIoA5vOBw09Csr3pTCnKT2lObQBgTZr39F3WAD26S2QUjEXgJA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611072;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=1M+Kzu1iXrazqNpAhphTWIrMwCAlLHvQ0LelJZN8q+Q=;
        b=UJKN7YBvcCR1rDtfI587ZaBMKx9NJIZLqoYO0Q/Eem3LhJICgZUSAKRRftb5u3lBAzdmT+
        zyxMFb5lXZi5EqAA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 02/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_30.RULE (part 1)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:11 +0200 (CEST)
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_SBL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    this program is free software you can redistribute it and/or modify it
    under the terms of the gnu general public license as published by the
    free software foundation version 2  this program is distributed as is
    without any warranty of any kind whether express or implied without
    even the implied warranty of merchantability or fitness for a
    particular purpose see the gnu general public license for more details

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
V2: Split to overcome the list size limits
---
 arch/arm/boot/dts/bcm11351.dtsi             |   14 ++------------
 arch/arm/boot/dts/bcm21664-garnet.dts       |   14 ++------------
 arch/arm/boot/dts/bcm21664.dtsi             |   14 ++------------
 arch/arm/boot/dts/bcm28155-ap.dts           |   14 ++------------
 arch/arm/boot/dts/dra72x-mmc-iodelay.dtsi   |   10 +---------
 arch/arm/boot/dts/dra74x-mmc-iodelay.dtsi   |   10 +---------
 arch/arm/include/debug/brcmstb.S            |   14 ++------------
 arch/arm/mach-bcm/Makefile                  |    9 +--------
 arch/arm/mach-bcm/bcm63xx.c                 |   14 ++------------
 arch/arm/mach-bcm/bcm_cygnus.c              |   14 ++------------
 arch/arm/mach-bcm/bcm_hr2.c                 |   14 ++------------
 arch/arm/mach-bcm/bcm_kona_smc.c            |   14 ++------------
 arch/arm/mach-bcm/bcm_kona_smc.h            |   14 ++------------
 arch/arm/mach-bcm/bcm_nsp.c                 |   14 ++------------
 arch/arm/mach-bcm/board_bcm21664.c          |   14 ++------------
 arch/arm/mach-bcm/board_bcm23550.c          |   14 ++------------
 arch/arm/mach-bcm/board_bcm281xx.c          |   14 ++------------
 arch/arm/mach-bcm/brcmstb.c                 |   14 ++------------
 arch/arm/mach-bcm/kona_l2_cache.c           |   14 ++------------
 arch/arm/mach-bcm/kona_l2_cache.h           |   14 ++------------
 arch/arm/mach-bcm/platsmp-brcmstb.c         |   10 +---------
 arch/arm/mach-davinci/board-dm365-evm.c     |   11 +----------
 arch/arm/mach-davinci/davinci.h             |   10 +---------
 arch/arm/mach-davinci/dm365.c               |   10 +---------
 arch/arm/mach-davinci/pm.h                  |   10 +---------
 arch/arm/mach-omap1/gpio15xx.c              |   10 +---------
 arch/arm/mach-omap1/gpio16xx.c              |   10 +---------
 arch/arm/mach-omap1/gpio7xx.c               |   10 +---------
 arch/arm/mach-omap2/am33xx.h                |   10 +---------
 arch/arm/mach-omap2/clockdomains33xx_data.c |   10 +---------
 arch/arm/mach-omap2/clockdomains81xx_data.c |   10 +---------
 arch/arm/mach-omap2/cm-regbits-33xx.h       |   10 +---------
 arch/arm/mach-omap2/cm33xx.c                |   10 +---------
 arch/arm/mach-omap2/cm33xx.h                |   10 +---------
 arch/arm/mach-omap2/cm81xx.h                |   10 +---------
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c  |   11 +----------
 arch/arm/mach-omap2/powerdomains33xx_data.c |   10 +---------
 arch/arm/mach-omap2/prm-regbits-33xx.h      |   10 +---------
 arch/arm/mach-omap2/prm33xx.c               |   10 +---------
 arch/arm/mach-omap2/prm33xx.h               |   10 +---------
 arch/arm/mach-omap2/ti81xx.h                |   10 +---------
 drivers/char/hw_random/iproc-rng200.c       |    9 +--------
 drivers/clk/bcm/clk-bcm21664.c              |   10 +---------
 drivers/clk/bcm/clk-bcm281xx.c              |   10 +---------
 drivers/clk/bcm/clk-bcm63xx.c               |   14 ++------------
 drivers/clk/bcm/clk-cygnus.c                |   14 ++------------
 drivers/clk/bcm/clk-hr2.c                   |   14 ++------------
 drivers/clk/bcm/clk-iproc-armpll.c          |   14 ++------------
 drivers/clk/bcm/clk-iproc-asiu.c            |   14 ++------------
 drivers/clk/bcm/clk-iproc-pll.c             |   14 ++------------
 drivers/clk/bcm/clk-iproc.h                 |   14 ++------------
 drivers/clk/bcm/clk-kona-setup.c            |   10 +---------
 drivers/clk/bcm/clk-kona.c                  |   10 +---------
 drivers/clk/bcm/clk-kona.h                  |   10 +---------
 drivers/clk/bcm/clk-ns2.c                   |   14 ++------------
 drivers/clk/bcm/clk-nsp.c                   |   14 ++------------
 drivers/clk/ti/adpll.c                      |   11 +----------
 drivers/clk/ti/clk-2xxx.c                   |   10 +---------
 drivers/clk/ti/clk-33xx.c                   |   10 +---------
 drivers/clk/ti/clk-3xxx.c                   |   10 +---------
 drivers/clk/ti/clk-43xx.c                   |   10 +---------
 drivers/clk/ti/clk-816x.c                   |   11 +----------
 drivers/clk/ti/clock.h                      |   10 +---------
 drivers/clk/ti/fapll.c                      |   11 +----------
 64 files changed, 90 insertions(+), 657 deletions(-)

--- a/arch/arm/boot/dts/bcm11351.dtsi
+++ b/arch/arm/boot/dts/bcm11351.dtsi
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2012-2013 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2012-2013 Broadcom Corporation
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
--- a/arch/arm/boot/dts/bcm21664-garnet.dts
+++ b/arch/arm/boot/dts/bcm21664-garnet.dts
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 /dts-v1/;
 
--- a/arch/arm/boot/dts/bcm21664.dtsi
+++ b/arch/arm/boot/dts/bcm21664.dtsi
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
--- a/arch/arm/boot/dts/bcm28155-ap.dts
+++ b/arch/arm/boot/dts/bcm28155-ap.dts
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2013 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2013 Broadcom Corporation
 
 /dts-v1/;
 
--- a/arch/arm/boot/dts/dra72x-mmc-iodelay.dtsi
+++ b/arch/arm/boot/dts/dra72x-mmc-iodelay.dtsi
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * MMC IOdelay values for TI's DRA72x, DRA71x and AM571x SoCs.
  *
  * Copyright (C) 2017 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 /*
--- a/arch/arm/boot/dts/dra74x-mmc-iodelay.dtsi
+++ b/arch/arm/boot/dts/dra74x-mmc-iodelay.dtsi
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * MMC IOdelay values for TI's DRA74x, DRA75x and AM572x SoCs.
  *
  * Copyright (C) 2017 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 /*
--- a/arch/arm/include/debug/brcmstb.S
+++ b/arch/arm/include/debug/brcmstb.S
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2016 Broadcom
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2016 Broadcom */
 #include <linux/serial_reg.h>
 #include <asm/cputype.h>
 
--- a/arch/arm/mach-bcm/Makefile
+++ b/arch/arm/mach-bcm/Makefile
@@ -1,14 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # Copyright (C) 2012-2015 Broadcom Corporation
 #
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License as
-# published by the Free Software Foundation version 2.
-#
-# This program is distributed "as is" WITHOUT ANY WARRANTY of any
-# kind, whether express or implied; without even the implied warranty
-# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
 
 # Cygnus
 obj-$(CONFIG_ARCH_BCM_CYGNUS) +=  bcm_cygnus.o
--- a/arch/arm/mach-bcm/bcm63xx.c
+++ b/arch/arm/mach-bcm/bcm63xx.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <linux/of_platform.h>
 
--- a/arch/arm/mach-bcm/bcm_cygnus.c
+++ b/arch/arm/mach-bcm/bcm_cygnus.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <asm/mach/arch.h>
 
--- a/arch/arm/mach-bcm/bcm_hr2.c
+++ b/arch/arm/mach-bcm/bcm_hr2.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2017 Broadcom
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2017 Broadcom
 
 #include <asm/mach/arch.h>
 
--- a/arch/arm/mach-bcm/bcm_kona_smc.c
+++ b/arch/arm/mach-bcm/bcm_kona_smc.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2013 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2013 Broadcom Corporation
 #include <linux/smp.h>
 #include <linux/io.h>
 #include <linux/ioport.h>
--- a/arch/arm/mach-bcm/bcm_kona_smc.h
+++ b/arch/arm/mach-bcm/bcm_kona_smc.h
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2013 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2013 Broadcom Corporation */
 
 #ifndef BCM_KONA_SMC_H
 #define BCM_KONA_SMC_H
--- a/arch/arm/mach-bcm/bcm_nsp.c
+++ b/arch/arm/mach-bcm/bcm_nsp.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2015 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2015 Broadcom Corporation
 
 #include <asm/mach/arch.h>
 
--- a/arch/arm/mach-bcm/board_bcm21664.c
+++ b/arch/arm/mach-bcm/board_bcm21664.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <asm/mach/arch.h>
 
--- a/arch/arm/mach-bcm/board_bcm23550.c
+++ b/arch/arm/mach-bcm/board_bcm23550.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2016 Broadcom
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2016 Broadcom
 
 #include <linux/of_platform.h>
 
--- a/arch/arm/mach-bcm/board_bcm281xx.c
+++ b/arch/arm/mach-bcm/board_bcm281xx.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2012-2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2012-2014 Broadcom Corporation
 
 #include <linux/clocksource.h>
 #include <linux/of_address.h>
--- a/arch/arm/mach-bcm/brcmstb.c
+++ b/arch/arm/mach-bcm/brcmstb.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2013-2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2013-2014 Broadcom Corporation
 
 #include <linux/init.h>
 #include <linux/irqchip.h>
--- a/arch/arm/mach-bcm/kona_l2_cache.c
+++ b/arch/arm/mach-bcm/kona_l2_cache.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2012-2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2012-2014 Broadcom Corporation
 
 
 #include <linux/init.h>
--- a/arch/arm/mach-bcm/kona_l2_cache.h
+++ b/arch/arm/mach-bcm/kona_l2_cache.h
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2012-2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2012-2014 Broadcom Corporation */
 
 #ifdef CONFIG_ARCH_BCM_MOBILE_L2_CACHE
 void	kona_l2_cache_init(void);
--- a/arch/arm/mach-bcm/platsmp-brcmstb.c
+++ b/arch/arm/mach-bcm/platsmp-brcmstb.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Broadcom STB CPU SMP and hotplug support for ARM
  *
  * Copyright (C) 2013-2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/delay.h>
--- a/arch/arm/mach-davinci/board-dm365-evm.c
+++ b/arch/arm/mach-davinci/board-dm365-evm.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci DM365 EVM board support
  *
  * Copyright (C) 2009 Texas Instruments Incorporated
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #include <linux/kernel.h>
 #include <linux/init.h>
@@ -861,4 +853,3 @@ MACHINE_START(DAVINCI_DM365_EVM, "DaVinc
 	.init_late	= davinci_init_late,
 	.dma_zone_size	= SZ_128M,
 MACHINE_END
-
--- a/arch/arm/mach-davinci/davinci.h
+++ b/arch/arm/mach-davinci/davinci.h
@@ -1,18 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This file contains the processor specific definitions
  * of the TI DM644x, DM355, DM365, and DM646x.
  *
  * Copyright (C) 2011 Texas Instruments Incorporated
  * Copyright (c) 2007 Deep Root Systems, LLC
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef __DAVINCI_H
 #define __DAVINCI_H
--- a/arch/arm/mach-davinci/dm365.c
+++ b/arch/arm/mach-davinci/dm365.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI DaVinci DM365 chip specific setup
  *
  * Copyright (C) 2009 Texas Instruments
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/clk-provider.h>
--- a/arch/arm/mach-davinci/pm.h
+++ b/arch/arm/mach-davinci/pm.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI DaVinci platform support for power management.
  *
  * Copyright (C) 2009 Texas Instruments, Inc. https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 #ifndef _MACH_DAVINCI_PM_H
 #define _MACH_DAVINCI_PM_H
--- a/arch/arm/mach-omap1/gpio15xx.c
+++ b/arch/arm/mach-omap1/gpio15xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP15xx specific gpio init
  *
@@ -5,15 +6,6 @@
  *
  * Author:
  *	Charulatha V <charu@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/gpio.h>
--- a/arch/arm/mach-omap1/gpio16xx.c
+++ b/arch/arm/mach-omap1/gpio16xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP16xx specific gpio init
  *
@@ -5,15 +6,6 @@
  *
  * Author:
  *	Charulatha V <charu@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/gpio.h>
--- a/arch/arm/mach-omap1/gpio7xx.c
+++ b/arch/arm/mach-omap1/gpio7xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP7xx specific gpio init
  *
@@ -5,15 +6,6 @@
  *
  * Author:
  *	Charulatha V <charu@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/gpio.h>
--- a/arch/arm/mach-omap2/am33xx.h
+++ b/arch/arm/mach-omap2/am33xx.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This file contains the address info for various AM33XX modules.
  *
  * Copyright (C) 2011 Texas Instruments, Inc. - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ASM_ARCH_AM33XX_H
--- a/arch/arm/mach-omap2/clockdomains33xx_data.c
+++ b/arch/arm/mach-omap2/clockdomains33xx_data.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AM33XX Clock Domain data.
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
  * Vaibhav Hiremath <hvaibhav@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-omap2/clockdomains81xx_data.c
+++ b/arch/arm/mach-omap2/clockdomains81xx_data.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI81XX Clock Domain data.
  *
  * Copyright (C) 2010 Texas Instruments, Inc. - https://www.ti.com/
  * Copyright (C) 2013 SKTB SKiT, http://www.skitlab.ru/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ARCH_ARM_MACH_OMAP2_CLOCKDOMAINS_81XX_H
--- a/arch/arm/mach-omap2/cm-regbits-33xx.h
+++ b/arch/arm/mach-omap2/cm-regbits-33xx.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * AM33XX Power Management register bits
  *
@@ -5,15 +6,6 @@
  * Vaibhav Hiremath <hvaibhav@ti.com>
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 
--- a/arch/arm/mach-omap2/cm33xx.c
+++ b/arch/arm/mach-omap2/cm33xx.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AM33XX CM functions
  *
@@ -5,15 +6,6 @@
  * Vaibhav Hiremath <hvaibhav@ti.com>
  *
  * Reference taken from from OMAP4 cminst44xx.c
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-omap2/cm33xx.h
+++ b/arch/arm/mach-omap2/cm33xx.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * AM33XX CM offset macros
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
  * Vaibhav Hiremath <hvaibhav@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ARCH_ARM_MACH_OMAP2_CM_33XX_H
--- a/arch/arm/mach-omap2/cm81xx.h
+++ b/arch/arm/mach-omap2/cm81xx.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Clock domain register offsets for TI81XX.
  *
  * Copyright (C) 2010 Texas Instruments, Inc. - https://www.ti.com/
  * Copyright (C) 2013 SKTB SKiT, http://www.skitlab.ru/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ARCH_ARM_MACH_OMAP2_CM_TI81XX_H
--- a/arch/arm/mach-omap2/omap_hwmod_81xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_81xx_data.c
@@ -1,18 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * DM81xx hwmod data.
  *
  * Copyright (C) 2010 Texas Instruments, Inc. - https://www.ti.com/
  * Copyright (C) 2013 SKTB SKiT, http://www.skitlab.ru/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <linux/types.h>
--- a/arch/arm/mach-omap2/powerdomains33xx_data.c
+++ b/arch/arm/mach-omap2/powerdomains33xx_data.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AM33XX Power domain data
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-omap2/prm-regbits-33xx.h
+++ b/arch/arm/mach-omap2/prm-regbits-33xx.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * AM33XX PRM_XXX register bits
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ARCH_ARM_MACH_OMAP2_PRM_REGBITS_33XX_H
--- a/arch/arm/mach-omap2/prm33xx.c
+++ b/arch/arm/mach-omap2/prm33xx.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AM33XX PRM functions
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/arch/arm/mach-omap2/prm33xx.h
+++ b/arch/arm/mach-omap2/prm33xx.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * AM33XX PRM instance offset macros
  *
  * Copyright (C) 2011-2012 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ARCH_ARM_MACH_OMAP2_PRM33XX_H
--- a/arch/arm/mach-omap2/ti81xx.h
+++ b/arch/arm/mach-omap2/ti81xx.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This file contains the address data for various TI81XX modules.
  *
  * Copyright (C) 2010 Texas Instruments, Inc. - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef __ASM_ARCH_TI81XX_H
--- a/drivers/char/hw_random/iproc-rng200.c
+++ b/drivers/char/hw_random/iproc-rng200.c
@@ -1,14 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
 * Copyright (C) 2015 Broadcom Corporation
 *
-* This program is free software; you can redistribute it and/or
-* modify it under the terms of the GNU General Public License as
-* published by the Free Software Foundation version 2.
-*
-* This program is distributed "as is" WITHOUT ANY WARRANTY of any
-* kind, whether express or implied; without even the implied warranty
-* of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-* GNU General Public License for more details.
 */
 /*
  * DESCRIPTION: The Broadcom iProc RNG200 Driver
--- a/drivers/clk/bcm/clk-bcm21664.c
+++ b/drivers/clk/bcm/clk-bcm21664.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Broadcom Corporation
  * Copyright 2014 Linaro Limited
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include "clk-kona.h"
--- a/drivers/clk/bcm/clk-bcm281xx.c
+++ b/drivers/clk/bcm/clk-bcm281xx.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Broadcom Corporation
  * Copyright 2013 Linaro Limited
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include "clk-kona.h"
--- a/drivers/clk/bcm/clk-bcm63xx.c
+++ b/drivers/clk/bcm/clk-bcm63xx.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2015 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2015 Broadcom Corporation
 #include <linux/init.h>
 #include <linux/clk-provider.h>
 #include <linux/of.h>
--- a/drivers/clk/bcm/clk-cygnus.c
+++ b/drivers/clk/bcm/clk-cygnus.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <linux/kernel.h>
 #include <linux/err.h>
--- a/drivers/clk/bcm/clk-hr2.c
+++ b/drivers/clk/bcm/clk-hr2.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2017 Broadcom
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2017 Broadcom
 
 #include <linux/kernel.h>
 #include <linux/err.h>
--- a/drivers/clk/bcm/clk-iproc-armpll.c
+++ b/drivers/clk/bcm/clk-iproc-armpll.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <linux/kernel.h>
 #include <linux/slab.h>
--- a/drivers/clk/bcm/clk-iproc-asiu.c
+++ b/drivers/clk/bcm/clk-iproc-asiu.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <linux/kernel.h>
 #include <linux/err.h>
--- a/drivers/clk/bcm/clk-iproc-pll.c
+++ b/drivers/clk/bcm/clk-iproc-pll.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2014 Broadcom Corporation
 
 #include <linux/kernel.h>
 #include <linux/err.h>
--- a/drivers/clk/bcm/clk-iproc.h
+++ b/drivers/clk/bcm/clk-iproc.h
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2014 Broadcom Corporation */
 
 #ifndef _CLK_IPROC_H
 #define _CLK_IPROC_H
--- a/drivers/clk/bcm/clk-kona-setup.c
+++ b/drivers/clk/bcm/clk-kona-setup.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Broadcom Corporation
  * Copyright 2013 Linaro Limited
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <linux/io.h>
--- a/drivers/clk/bcm/clk-kona.c
+++ b/drivers/clk/bcm/clk-kona.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2013 Broadcom Corporation
  * Copyright 2013 Linaro Limited
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include "clk-kona.h"
--- a/drivers/clk/bcm/clk-kona.h
+++ b/drivers/clk/bcm/clk-kona.h
@@ -1,15 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2013 Broadcom Corporation
  * Copyright 2013 Linaro Limited
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef _CLK_KONA_H
--- a/drivers/clk/bcm/clk-ns2.c
+++ b/drivers/clk/bcm/clk-ns2.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2015 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2015 Broadcom Corporation
 
 #include <linux/kernel.h>
 #include <linux/err.h>
--- a/drivers/clk/bcm/clk-nsp.c
+++ b/drivers/clk/bcm/clk-nsp.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2015 Broadcom Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2015 Broadcom Corporation
 
 #include <linux/kernel.h>
 #include <linux/err.h>
--- a/drivers/clk/ti/adpll.c
+++ b/drivers/clk/ti/adpll.c
@@ -1,13 +1,4 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <linux/clk.h>
 #include <linux/clkdev.h>
--- a/drivers/clk/ti/clk-2xxx.c
+++ b/drivers/clk/ti/clk-2xxx.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP2 Clock init
  *
  * Copyright (C) 2013 Texas Instruments, Inc
  *     Tero Kristo (t-kristo@ti.com)
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/ti/clk-33xx.c
+++ b/drivers/clk/ti/clk-33xx.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AM33XX Clock init
  *
  * Copyright (C) 2013 Texas Instruments, Inc
  *     Tero Kristo (t-kristo@ti.com)
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/ti/clk-3xxx.c
+++ b/drivers/clk/ti/clk-3xxx.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * OMAP3 Clock init
  *
  * Copyright (C) 2013 Texas Instruments, Inc
  *     Tero Kristo (t-kristo@ti.com)
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/ti/clk-43xx.c
+++ b/drivers/clk/ti/clk-43xx.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * AM43XX Clock init
  *
  * Copyright (C) 2013 Texas Instruments, Inc
  *     Tero Kristo (t-kristo@ti.com)
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/clk/ti/clk-816x.c
+++ b/drivers/clk/ti/clk-816x.c
@@ -1,13 +1,4 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <linux/kernel.h>
 #include <linux/list.h>
--- a/drivers/clk/ti/clock.h
+++ b/drivers/clk/ti/clock.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI Clock driver internal definitions
  *
  * Copyright (C) 2014 Texas Instruments, Inc
  *     Tero Kristo (t-kristo@ti.com)
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
  */
 #ifndef __DRIVERS_CLK_TI_CLOCK__
 #define __DRIVERS_CLK_TI_CLOCK__
--- a/drivers/clk/ti/fapll.c
+++ b/drivers/clk/ti/fapll.c
@@ -1,13 +1,4 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- */
+// SPDX-License-Identifier: GPL-2.0-only
 
 #include <linux/clk.h>
 #include <linux/clk-provider.h>

