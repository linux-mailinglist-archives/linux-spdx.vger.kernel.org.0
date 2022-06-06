Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 241FA53EF39
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233188AbiFFUK5 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233411AbiFFUKu (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:50 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A23731339EB
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:44 -0700 (PDT)
Message-ID: <20220606200811.074461272@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546243;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=kNH8asQnrtbW7s3nZALNQxU5nbrH0gqgjIIoJLkuQTE=;
        b=lspfP1OI8ztcPmWmBhDfarkJ8zftLAQJgOhJtPmWehOt0DnAYlZixwnjNIaoN3AL3XGEzE
        RNw6yGKi1Zv25VhnDTgoJ9wNV0Gif7KstbeRi6exMCVgYCYhRfSG6WzfDJWWL9LXhQpiGD
        jVZ+7it4VTMbxoBZSnBOCGOUSalmZJ9Jg3alBpjTRUf5e76ETFNRA69kuEoSmuNWM719Ik
        3ogZTCkXiRqqA4hY0JikGfu0vCXMBOPVzdC6TNZKXBmc9UDo/DLHEUiaKeOuV72USz6vIT
        f7L0ZF9kRkJj5FLyDoORK5Hv+riqq59dH70+wOP08kFo8gHvX7ks6/B6hDfRKg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546243;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=kNH8asQnrtbW7s3nZALNQxU5nbrH0gqgjIIoJLkuQTE=;
        b=kfxx8z5pXUj65Ej5wrrtFx98GxLQHudPjVHAtNMt8QdxL7SJdn5i8O/TWSVgqp0iTNATCq
        AIvzZLFjBvB9eRAA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 17/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_319.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:42 +0200 (CEST)
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
    as is without any warranty of any kind whether expressed or implied
    without even the implied warranty of merchantability or fitness for a
    particular purpose see the gnu general public license version 2 for
    more details

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/gpio/gpio-lp873x.c             |   10 +---------
 drivers/gpio/gpio-lp87565.c            |   10 +---------
 drivers/gpio/gpio-pisosr.c             |   10 +---------
 drivers/gpio/gpio-tpic2810.c           |   10 +---------
 drivers/mfd/tps65086.c                 |   10 +---------
 drivers/mfd/tps65218.c                 |   10 +---------
 drivers/mfd/tps65912-core.c            |   10 +---------
 drivers/mfd/tps65912-i2c.c             |   10 +---------
 drivers/mfd/tps65912-spi.c             |   10 +---------
 drivers/regulator/lp873x-regulator.c   |   10 +---------
 drivers/regulator/tps65086-regulator.c |   10 +---------
 drivers/regulator/tps65218-regulator.c |   10 +---------
 drivers/regulator/tps65912-regulator.c |   10 +---------
 include/linux/mfd/tps65086.h           |   10 +---------
 include/linux/mfd/tps65218.h           |   10 +---------
 include/linux/mfd/tps65912.h           |   10 +---------
 16 files changed, 16 insertions(+), 144 deletions(-)

--- a/drivers/gpio/gpio-lp873x.c
+++ b/drivers/gpio/gpio-lp873x.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2016 Texas Instruments Incorporated - http://www.ti.com/
  *	Keerthy <j-keerthy@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65218 driver
  */
 
--- a/drivers/gpio/gpio-lp87565.c
+++ b/drivers/gpio/gpio-lp87565.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 Texas Instruments Incorporated - http://www.ti.com/
  *	Keerthy <j-keerthy@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the LP873X driver
  */
 
--- a/drivers/gpio/gpio-pisosr.c
+++ b/drivers/gpio/gpio-pisosr.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
  */
 
 #include <linux/bitmap.h>
--- a/drivers/gpio/gpio-tpic2810.c
+++ b/drivers/gpio/gpio-tpic2810.c
@@ -1,15 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
  */
 
 #include <linux/gpio/driver.h>
--- a/drivers/mfd/tps65086.c
+++ b/drivers/mfd/tps65086.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65912 driver
  */
 
--- a/drivers/mfd/tps65218.c
+++ b/drivers/mfd/tps65218.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Driver for TPS65218 Integrated power management chipsets
  *
  * Copyright (C) 2014 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/mfd/tps65912-core.c
+++ b/drivers/mfd/tps65912-core.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Core functions for TI TPS65912x PMICs
  *
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65218 driver and the previous TPS65912 driver by
  * Margarita Olaya Cabrera <magi@slimlogic.co.uk>
  */
--- a/drivers/mfd/tps65912-i2c.c
+++ b/drivers/mfd/tps65912-i2c.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * I2C access driver for TI TPS65912x PMICs
  *
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65218 driver and the previous TPS65912 driver by
  * Margarita Olaya Cabrera <magi@slimlogic.co.uk>
  */
--- a/drivers/mfd/tps65912-spi.c
+++ b/drivers/mfd/tps65912-spi.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * SPI access driver for TI TPS65912x PMICs
  *
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65218 driver and the previous TPS65912 driver by
  * Margarita Olaya Cabrera <magi@slimlogic.co.uk>
  */
--- a/drivers/regulator/lp873x-regulator.c
+++ b/drivers/regulator/lp873x-regulator.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Regulator driver for LP873X PMIC
  *
  * Copyright (C) 2016 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
  */
 
 #include <linux/module.h>
--- a/drivers/regulator/tps65086-regulator.c
+++ b/drivers/regulator/tps65086-regulator.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *
  * Author: Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65912 driver
  */
 
--- a/drivers/regulator/tps65218-regulator.c
+++ b/drivers/regulator/tps65218-regulator.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * tps65218-regulator.c
  *
  * Regulator driver for TPS65218 PMIC
  *
  * Copyright (C) 2014 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
  */
 
 #include <linux/kernel.h>
--- a/drivers/regulator/tps65912-regulator.c
+++ b/drivers/regulator/tps65912-regulator.c
@@ -1,18 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Regulator driver for TI TPS65912x PMICs
  *
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65218 driver and the previous TPS65912 driver by
  * Margarita Olaya Cabrera <magi@slimlogic.co.uk>
  */
--- a/include/linux/mfd/tps65086.h
+++ b/include/linux/mfd/tps65086.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65912 driver
  */
 
--- a/include/linux/mfd/tps65218.h
+++ b/include/linux/mfd/tps65218.h
@@ -1,18 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * linux/mfd/tps65218.h
  *
  * Functions to access TPS65218 power management chip.
  *
  * Copyright (C) 2014 Texas Instruments Incorporated - https://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
  */
 
 #ifndef __LINUX_MFD_TPS65218_H
--- a/include/linux/mfd/tps65912.h
+++ b/include/linux/mfd/tps65912.h
@@ -1,16 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
  *	Andrew F. Davis <afd@ti.com>
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed "as is" WITHOUT ANY WARRANTY of any
- * kind, whether expressed or implied; without even the implied warranty
- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.
- *
  * Based on the TPS65218 driver and the previous TPS65912 driver by
  * Margarita Olaya Cabrera <magi@slimlogic.co.uk>
  */

