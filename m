Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 795C85400C8
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245123AbiFGOLT (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245141AbiFGOLS (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:18 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E720BA3C23
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:14 -0700 (PDT)
Message-ID: <20220607131510.535061042@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611073;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=fKR3KMEgLvPPnkPCsLCAYrwotLcKVHKw0les7DyeXeo=;
        b=SEwRQPFCVw9g17lsiZTocWrGq/DrifVz9l5vfQ3JqUdWjeQ3/vckY+A6X/NpMbj27w+vLk
        SUpDQfmeiMnQiwLmOl179Lipm9HJxUqvzqdGktLfcDSoiJQyB9Z18Awhksk/pJPWx5GjXm
        +JZca/BsOGWc6/Pk1Lwg7Qa2wFLyjR4swYG1NGyZtFz5a1p4OYX2K0EaKgtA/RZS8hzZ/Z
        awLY4ZovZMpfHcqOiyBvTYeFYqi/HWgyU6cRSxKDxFTpmL0nZSAthZI84M36GHuLINTg4k
        awTTr5HAfju2VwRdUSMTt12D2yFM0tfYr3CIxIkQZgOVOmf0syWt8eTXfZcMpg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611073;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=fKR3KMEgLvPPnkPCsLCAYrwotLcKVHKw0les7DyeXeo=;
        b=rB3PoeF+6fANNgNHJFB6A7kjT5JEbygqd1v2W6msYIjg7EMw42RkE1IaMZkRkkLLvMavPJ
        OSBnF1Bk0O2ODADw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 03/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_30.RULE (part 2)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:13 +0200 (CEST)
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
V2: Split to overcome list size limits
---
 drivers/dma/bcm-sba-raid.c                       |   14 ++------------
 drivers/dma/ti/edma.c                            |   10 +---------
 drivers/gpio/gpio-bcm-kona.c                     |   10 +---------
 drivers/gpio/gpio-brcmstb.c                      |   14 ++------------
 drivers/i2c/busses/i2c-bcm-iproc.c               |   14 ++------------
 drivers/i2c/busses/i2c-bcm-kona.c                |   14 ++------------
 drivers/i2c/busses/i2c-brcmstb.c                 |   14 ++------------
 drivers/input/keyboard/bcm-keypad.c              |   14 ++------------
 drivers/input/misc/gpio_decoder.c                |   10 +---------
 drivers/input/touchscreen/bcm_iproc_tsc.c        |    9 +--------
 drivers/irqchip/irq-keystone.c                   |   10 +---------
 drivers/mailbox/bcm-flexrm-mailbox.c             |   14 ++------------
 drivers/media/i2c/adv7343_regs.h                 |   10 +---------
 drivers/media/i2c/adv7393_regs.h                 |   10 +---------
 drivers/media/platform/ti/davinci/vpif.h         |   11 +----------
 drivers/media/platform/ti/davinci/vpif_display.h |   10 +---------
 drivers/memory/ti-emif-sram-pm.S                 |   10 +---------
 drivers/mfd/lp873x.c                             |   10 +---------
 drivers/mfd/tps65217.c                           |   10 +---------
 drivers/mmc/host/sdhci-bcm-kona.c                |   14 ++------------
 drivers/mmc/host/sdhci-iproc.c                   |   14 ++------------
 drivers/net/can/ti_hecc.c                        |   11 +----------
 drivers/nvmem/bcm-ocotp.c                        |   14 ++------------
 drivers/phy/broadcom/phy-bcm-cygnus-pcie.c       |   14 ++------------
 drivers/phy/broadcom/phy-bcm-ns2-pcie.c          |   14 ++------------
 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c        |   14 ++------------
 drivers/phy/motorola/phy-cpcap-usb.c             |   10 +---------
 drivers/phy/ti/phy-dm816x-usb.c                  |   11 +----------
 drivers/pinctrl/bcm/pinctrl-bcm281xx.c           |   14 ++------------
 drivers/pinctrl/bcm/pinctrl-cygnus-mux.c         |   14 ++------------
 drivers/pinctrl/bcm/pinctrl-ns2-mux.c            |   10 +---------
 drivers/pinctrl/bcm/pinctrl-nsp-gpio.c           |   14 ++------------
 drivers/pinctrl/bcm/pinctrl-nsp-mux.c            |   10 +---------
 drivers/power/reset/brcm-kona-reset.c            |   14 ++------------
 drivers/power/reset/brcmstb-reboot.c             |   14 ++------------
 drivers/ptp/ptp_dte.c                            |   14 ++------------
 drivers/pwm/pwm-bcm-iproc.c                      |   14 ++------------
 drivers/pwm/pwm-bcm-kona.c                       |   14 ++------------
 drivers/regulator/cpcap-regulator.c              |   10 +---------
 drivers/regulator/isl6271a-regulator.c           |   10 +---------
 drivers/regulator/tps65023-regulator.c           |   10 +---------
 drivers/regulator/tps6507x-regulator.c           |   10 +---------
 drivers/regulator/tps65217-regulator.c           |   10 +---------
 drivers/soc/ti/knav_dma.c                        |   10 +---------
 drivers/uio/uio_pruss.c                          |   10 +---------
 drivers/video/backlight/tps65217_bl.c            |   10 +---------
 include/dt-bindings/clock/bcm21664.h             |   10 +---------
 include/dt-bindings/clock/bcm281xx.h             |   10 +---------
 include/linux/mfd/lp873x.h                       |   10 +---------
 include/linux/mfd/tps65217.h                     |   10 +---------
 include/linux/platform_data/davinci_asp.h        |   10 +---------
 include/linux/platform_data/gpio-davinci.h       |   10 +---------
 include/linux/platform_data/uio_dmem_genirq.h    |   10 +---------
 include/linux/platform_data/uio_pruss.h          |   10 +---------
 include/linux/reset/bcm63xx_pmb.h                |   10 +---------
 include/linux/soc/ti/knav_dma.h                  |   10 +---------
 include/linux/soc/ti/knav_qmss.h                 |   10 +---------
 include/linux/sram.h                             |   14 ++------------
 include/linux/ti-emif-sram.h                     |   10 +---------
 include/linux/wkup_m3_ipc.h                      |   10 +---------
 include/media/i2c/adv7343.h                      |   10 +---------
 include/media/i2c/adv7393.h                      |   10 +---------
 net/hsr/hsr_debugfs.c                            |   10 +---------
 sound/soc/bcm/cygnus-pcm.c                       |   14 ++------------
 sound/soc/bcm/cygnus-ssp.c                       |   14 ++------------
 sound/soc/bcm/cygnus-ssp.h                       |   14 ++------------
 66 files changed, 91 insertions(+), 671 deletions(-)

--- a/drivers/dma/bcm-sba-raid.c
+++ b/drivers/dma/bcm-sba-raid.c
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
 
 /*
  * Broadcom SBA RAID Driver
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI EDMA DMA engine driver
  *
  * Copyright 2012 Texas Instruments
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
 
 #include <linux/dmaengine.h>
--- a/drivers/gpio/gpio-bcm-kona.c
+++ b/drivers/gpio/gpio-bcm-kona.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Broadcom Kona GPIO Driver
  *
  * Author: Broadcom Corporation <bcm-kernel-feedback-list@broadcom.com>
  * Copyright (C) 2012-2014 Broadcom Corporation
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
 
 #include <linux/bitops.h>
--- a/drivers/gpio/gpio-brcmstb.c
+++ b/drivers/gpio/gpio-brcmstb.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2015-2017 Broadcom
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
+// Copyright (C) 2015-2017 Broadcom
 
 #include <linux/bitops.h>
 #include <linux/gpio/driver.h>
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
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
 
 #include <linux/delay.h>
 #include <linux/i2c.h>
--- a/drivers/i2c/busses/i2c-bcm-kona.c
+++ b/drivers/i2c/busses/i2c-bcm-kona.c
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
 
 #include <linux/device.h>
 #include <linux/kernel.h>
--- a/drivers/i2c/busses/i2c-brcmstb.c
+++ b/drivers/i2c/busses/i2c-brcmstb.c
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
 
 #include <linux/clk.h>
 #include <linux/delay.h>
--- a/drivers/input/keyboard/bcm-keypad.c
+++ b/drivers/input/keyboard/bcm-keypad.c
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
 
 #include <linux/bitops.h>
 #include <linux/clk.h>
--- a/drivers/input/misc/gpio_decoder.c
+++ b/drivers/input/misc/gpio_decoder.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2016 Texas Instruments Incorporated - http://www.ti.com/
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  * A generic driver to read multiple gpio lines and translate the
  * encoded numeric value into an input event.
  */
--- a/drivers/input/touchscreen/bcm_iproc_tsc.c
+++ b/drivers/input/touchscreen/bcm_iproc_tsc.c
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
-* of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-* GNU General Public License for more details.
 */
 #include <linux/module.h>
 #include <linux/init.h>
--- a/drivers/irqchip/irq-keystone.c
+++ b/drivers/irqchip/irq-keystone.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Texas Instruments Keystone IRQ controller IP driver
  *
  * Copyright (C) 2014 Texas Instruments, Inc.
  * Author: Sajesh Kumar Saran <sajesh@ti.com>
  *	   Grygorii Strashko <grygorii.strashko@ti.com>
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
 
 #include <linux/irq.h>
--- a/drivers/mailbox/bcm-flexrm-mailbox.c
+++ b/drivers/mailbox/bcm-flexrm-mailbox.c
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
 
 /*
  * Broadcom FlexRM Mailbox Driver
--- a/drivers/media/i2c/adv7343_regs.h
+++ b/drivers/media/i2c/adv7343_regs.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * ADV7343 encoder related structure and register definitions
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed .as is. WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef ADV7343_REGS_H
--- a/drivers/media/i2c/adv7393_regs.h
+++ b/drivers/media/i2c/adv7393_regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * ADV7393 encoder related structure and register definitions
  *
@@ -7,15 +8,6 @@
  * Based on ADV7343 driver,
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed .as is. WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef ADV7393_REGS_H
--- a/drivers/media/platform/ti/davinci/vpif.h
+++ b/drivers/media/platform/ti/davinci/vpif.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * VPIF header file
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed .as is. WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef VPIF_H
@@ -685,4 +677,3 @@ struct vpif_params {
 };
 
 #endif				/* End of #ifndef VPIF_H */
-
--- a/drivers/media/platform/ti/davinci/vpif_display.h
+++ b/drivers/media/platform/ti/davinci/vpif_display.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * VPIF display header file
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed .as is. WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef VPIF_DISPLAY_H
--- a/drivers/memory/ti-emif-sram-pm.S
+++ b/drivers/memory/ti-emif-sram-pm.S
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Low level PM code for TI EMIF
  *
  * Copyright (C) 2016-2017 Texas Instruments Incorporated - http://www.ti.com/
  *	Dave Gerlach
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
 
 #include <linux/linkage.h>
--- a/drivers/mfd/lp873x.c
+++ b/drivers/mfd/lp873x.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2016 Texas Instruments Incorporated - https://www.ti.com/
  *
  * Author: Keerthy <j-keerthy@ti.com>
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
 
 #include <linux/interrupt.h>
--- a/drivers/mfd/tps65217.c
+++ b/drivers/mfd/tps65217.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps65217.c
  *
  * TPS65217 chip family multi-function driver
  *
  * Copyright (C) 2011 Texas Instruments Incorporated - https://www.ti.com/
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
 
 #include <linux/device.h>
--- a/drivers/mmc/host/sdhci-bcm-kona.c
+++ b/drivers/mmc/host/sdhci-bcm-kona.c
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
 
 #include <linux/kernel.h>
 #include <linux/module.h>
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
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
 
 /*
  * iProc SDHCI platform driver
--- a/drivers/net/can/ti_hecc.c
+++ b/drivers/net/can/ti_hecc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * TI HECC (CAN) device driver
  *
@@ -6,16 +7,6 @@
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
  * Copyright (C) 2019 Jeroen Hofstee <jhofstee@victronenergy.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed as is WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  */
 
 #include <linux/module.h>
--- a/drivers/nvmem/bcm-ocotp.c
+++ b/drivers/nvmem/bcm-ocotp.c
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
 
 #include <linux/acpi.h>
 #include <linux/delay.h>
--- a/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c
+++ b/drivers/phy/broadcom/phy-bcm-cygnus-pcie.c
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
 
 #include <linux/delay.h>
 #include <linux/io.h>
--- a/drivers/phy/broadcom/phy-bcm-ns2-pcie.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-pcie.c
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
 
 #include <linux/device.h>
 #include <linux/module.h>
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
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
 
 #include <linux/delay.h>
 #include <linux/extcon-provider.h>
--- a/drivers/phy/motorola/phy-cpcap-usb.c
+++ b/drivers/phy/motorola/phy-cpcap-usb.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Motorola CPCAP PMIC USB PHY driver
  * Copyright (C) 2017 Tony Lindgren <tony@atomide.com>
@@ -5,15 +6,6 @@
  * Some parts based on earlier Motorola Linux kernel tree code in
  * board-mapphone-usb.c and cpcap-usb-det.c:
  * Copyright (C) 2007 - 2011 Motorola, Inc.
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
 
 #include <linux/atomic.h>
--- a/drivers/phy/ti/phy-dm816x-usb.c
+++ b/drivers/phy/ti/phy-dm816x-usb.c
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
 
 #include <linux/module.h>
 #include <linux/platform_device.h>
--- a/drivers/pinctrl/bcm/pinctrl-bcm281xx.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm281xx.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2013-2017 Broadcom
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
+// Copyright (C) 2013-2017 Broadcom
 
 #include <linux/err.h>
 #include <linux/io.h>
--- a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
+++ b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014-2017 Broadcom
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
+// Copyright (C) 2014-2017 Broadcom
 
 /*
  * Broadcom Cygnus IOMUX driver
--- a/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
+++ b/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
@@ -1,14 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2016 Broadcom Corporation
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  * This file contains the Northstar2 IOMUX driver that supports group
  * based PINMUX configuration. The PWM is functional only when the
  * corresponding mfio pin group is selected as gpio.
--- a/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014-2017 Broadcom
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
+// Copyright (C) 2014-2017 Broadcom
 
 /*
  * This file contains the Broadcom Northstar Plus (NSP) GPIO driver that
--- a/drivers/pinctrl/bcm/pinctrl-nsp-mux.c
+++ b/drivers/pinctrl/bcm/pinctrl-nsp-mux.c
@@ -1,14 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2015 Broadcom Corporation
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
  * This file contains the Northstar plus (NSP) IOMUX driver that supports
  * group based PINMUX configuration. The Northstar plus IOMUX controller
  * allows pins to be individually muxed to GPIO function. The NAND and MMC is
--- a/drivers/power/reset/brcm-kona-reset.c
+++ b/drivers/power/reset/brcm-kona-reset.c
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
 
 #include <linux/io.h>
 #include <linux/of_address.h>
--- a/drivers/power/reset/brcmstb-reboot.c
+++ b/drivers/power/reset/brcmstb-reboot.c
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
 
 #include <linux/bitops.h>
 #include <linux/device.h>
--- a/drivers/ptp/ptp_dte.c
+++ b/drivers/ptp/ptp_dte.c
@@ -1,15 +1,5 @@
-/*
- * Copyright 2017 Broadcom
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
+// Copyright 2017 Broadcom
 
 #include <linux/err.h>
 #include <linux/io.h>
--- a/drivers/pwm/pwm-bcm-iproc.c
+++ b/drivers/pwm/pwm-bcm-iproc.c
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
 
 #include <linux/clk.h>
 #include <linux/delay.h>
--- a/drivers/pwm/pwm-bcm-kona.c
+++ b/drivers/pwm/pwm-bcm-kona.c
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
 
 #include <linux/clk.h>
 #include <linux/delay.h>
--- a/drivers/regulator/cpcap-regulator.c
+++ b/drivers/regulator/cpcap-regulator.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Motorola CPCAP PMIC regulator driver
  *
@@ -6,15 +7,6 @@
  *
  * Rewritten for mainline kernel to use device tree and regmap
  * Copyright (C) 2017 Tony Lindgren <tony@atomide.com>
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
 
 #include <linux/err.h>
--- a/drivers/regulator/isl6271a-regulator.c
+++ b/drivers/regulator/isl6271a-regulator.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * isl6271a-regulator.c
  *
  * Support for Intersil ISL6271A voltage regulator
  *
  * Copyright (C) 2010 Marek Vasut <marek.vasut@gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/regulator/tps65023-regulator.c
+++ b/drivers/regulator/tps65023-regulator.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps65023-regulator.c
  *
  * Supports TPS65023 Regulator
  *
  * Copyright (C) 2009 Texas Instrument Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/regulator/tps6507x-regulator.c
+++ b/drivers/regulator/tps6507x-regulator.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps6507x-regulator.c
  *
  * Regulator driver for TPS65073 PMIC
  *
  * Copyright (C) 2009 Texas Instrument Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any kind,
- * whether express or implied; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/regulator/tps65217-regulator.c
+++ b/drivers/regulator/tps65217-regulator.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps65217-regulator.c
  *
  * Regulator driver for TPS65217 PMIC
  *
  * Copyright (C) 2011 Texas Instruments Incorporated - https://www.ti.com/
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
--- a/drivers/soc/ti/knav_dma.c
+++ b/drivers/soc/ti/knav_dma.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2014 Texas Instruments Incorporated
  * Authors:	Santosh Shilimkar <santosh.shilimkar@ti.com>
  *		Sandeep Nair <sandeep_n@ti.com>
  *		Cyril Chemparathy <cyril@ti.com>
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
--- a/drivers/uio/uio_pruss.c
+++ b/drivers/uio/uio_pruss.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Programmable Real-Time Unit Sub System (PRUSS) UIO driver (uio_pruss)
  *
@@ -5,15 +6,6 @@
  * and DDR RAM to user space for applications interacting with PRUSS firmware
  *
  * Copyright (C) 2010-11 Texas Instruments Incorporated - http://www.ti.com/
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
 #include <linux/device.h>
 #include <linux/module.h>
--- a/drivers/video/backlight/tps65217_bl.c
+++ b/drivers/video/backlight/tps65217_bl.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps65217_bl.c
  *
@@ -5,15 +6,6 @@
  *
  * Copyright (C) 2012 Matthias Kaehlcke
  * Author: Matthias Kaehlcke <matthias@kaehlcke.net>
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
--- a/include/dt-bindings/clock/bcm21664.h
+++ b/include/dt-bindings/clock/bcm21664.h
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
 
 #ifndef _CLOCK_BCM21664_H
--- a/include/dt-bindings/clock/bcm281xx.h
+++ b/include/dt-bindings/clock/bcm281xx.h
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
 
 #ifndef _CLOCK_BCM281XX_H
--- a/include/linux/mfd/lp873x.h
+++ b/include/linux/mfd/lp873x.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Functions to access LP873X power management chip.
  *
  * Copyright (C) 2016 Texas Instruments Incorporated - https://www.ti.com/
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
 
 #ifndef __LINUX_MFD_LP873X_H
--- a/include/linux/mfd/tps65217.h
+++ b/include/linux/mfd/tps65217.h
@@ -1,18 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * linux/mfd/tps65217.h
  *
  * Functions to access TPS65217 power management chip.
  *
  * Copyright (C) 2011 Texas Instruments Incorporated - https://www.ti.com/
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
 
 #ifndef __LINUX_MFD_TPS65217_H
--- a/include/linux/platform_data/davinci_asp.h
+++ b/include/linux/platform_data/davinci_asp.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI DaVinci Audio Serial Port support
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com/
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
 
 #ifndef __DAVINCI_ASP_H
--- a/include/linux/platform_data/gpio-davinci.h
+++ b/include/linux/platform_data/gpio-davinci.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * DaVinci GPIO Platform Related Defines
  *
  * Copyright (C) 2013 Texas Instruments Incorporated - https://www.ti.com/
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
 
 #ifndef __DAVINCI_GPIO_PLATFORM_H
--- a/include/linux/platform_data/uio_dmem_genirq.h
+++ b/include/linux/platform_data/uio_dmem_genirq.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * include/linux/platform_data/uio_dmem_genirq.h
  *
  * Copyright (C) 2012 Damian Hobson-Garcia
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
 
 #ifndef _UIO_DMEM_GENIRQ_H
--- a/include/linux/platform_data/uio_pruss.h
+++ b/include/linux/platform_data/uio_pruss.h
@@ -1,18 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * include/linux/platform_data/uio_pruss.h
  *
  * Platform data for uio_pruss driver
  *
  * Copyright (C) 2010-11 Texas Instruments Incorporated - https://www.ti.com/
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
 
 #ifndef _UIO_PRUSS_H_
--- a/include/linux/reset/bcm63xx_pmb.h
+++ b/include/linux/reset/bcm63xx_pmb.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Broadcom BCM63xx Processor Monitor Bus shared routines (SMP and reset)
  *
  * Copyright (C) 2015, Broadcom Corporation
  * Author: Florian Fainelli <f.fainelli@gmail.com>
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
 #ifndef __BCM63XX_PMB_H
 #define __BCM63XX_PMB_H
--- a/include/linux/soc/ti/knav_dma.h
+++ b/include/linux/soc/ti/knav_dma.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2014 Texas Instruments Incorporated
  * Authors:	Sandeep Nair <sandeep_n@ti.com
  *		Cyril Chemparathy <cyril@ti.com
 		Santosh Shilimkar <santosh.shilimkar@ti.com>
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
 
 #ifndef __SOC_TI_KEYSTONE_NAVIGATOR_DMA_H__
--- a/include/linux/soc/ti/knav_qmss.h
+++ b/include/linux/soc/ti/knav_qmss.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Keystone Navigator Queue Management Sub-System header
  *
@@ -5,15 +6,6 @@
  * Author:	Sandeep Nair <sandeep_n@ti.com>
  *		Cyril Chemparathy <cyril@ti.com>
  *		Santosh Shilimkar <santosh.shilimkar@ti.com>
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
 
 #ifndef __SOC_TI_KNAV_QMSS_H__
--- a/include/linux/sram.h
+++ b/include/linux/sram.h
@@ -1,15 +1,5 @@
-/*
- * Generic SRAM Driver Interface
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
+/* Generic SRAM Driver Interface */
 #ifndef __LINUX_SRAM_H__
 #define __LINUX_SRAM_H__
 
--- a/include/linux/ti-emif-sram.h
+++ b/include/linux/ti-emif-sram.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI AM33XX EMIF Routines
  *
  * Copyright (C) 2016-2017 Texas Instruments Inc.
  *	Dave Gerlach
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
 #ifndef __LINUX_TI_EMIF_H
 #define __LINUX_TI_EMIF_H
--- a/include/linux/wkup_m3_ipc.h
+++ b/include/linux/wkup_m3_ipc.h
@@ -1,17 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * TI Wakeup M3 for AMx3 SoCs Power Management Routines
  *
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  * Dave Gerlach <d-gerlach@ti.com>
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
 
 #ifndef _LINUX_WKUP_M3_IPC_H
--- a/include/media/i2c/adv7343.h
+++ b/include/media/i2c/adv7343.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * ADV7343 header file
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed .as is. WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef ADV7343_H
--- a/include/media/i2c/adv7393.h
+++ b/include/media/i2c/adv7393.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * ADV7393 header file
  *
@@ -7,15 +8,6 @@
  * Based on ADV7343 driver,
  *
  * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed .as is. WITHOUT ANY WARRANTY of any
- * kind, whether express or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifndef ADV7393_H
--- a/net/hsr/hsr_debugfs.c
+++ b/net/hsr/hsr_debugfs.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * debugfs code for HSR & PRP
  * Copyright (C) 2019 Texas Instruments Incorporated
  *
  * Author(s):
  *	Murali Karicheri <m-karicheri2@ti.com>
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
 #include <linux/module.h>
 #include <linux/errno.h>
--- a/sound/soc/bcm/cygnus-pcm.c
+++ b/sound/soc/bcm/cygnus-pcm.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014-2015 Broadcom Corporation
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
+// Copyright (C) 2014-2015 Broadcom Corporation
 #include <linux/debugfs.h>
 #include <linux/dma-mapping.h>
 #include <linux/init.h>
--- a/sound/soc/bcm/cygnus-ssp.c
+++ b/sound/soc/bcm/cygnus-ssp.c
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014-2015 Broadcom Corporation
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
+// Copyright (C) 2014-2015 Broadcom Corporation
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/init.h>
--- a/sound/soc/bcm/cygnus-ssp.h
+++ b/sound/soc/bcm/cygnus-ssp.h
@@ -1,15 +1,5 @@
-/*
- * Copyright (C) 2014-2015 Broadcom Corporation
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
+/* Copyright (C) 2014-2015 Broadcom Corporation */
 #ifndef __CYGNUS_SSP_H__
 #define __CYGNUS_SSP_H__
 

