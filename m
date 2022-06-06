Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1B253EF2D
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233299AbiFFUKa (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233304AbiFFUKW (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:22 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3A8A12E305
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:19 -0700 (PDT)
Message-ID: <20220606200810.120819557@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546218;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=SI0zUhD78gIee7NkT3gBmNYIjOqWWknWc52+LC59j34=;
        b=TSHQIreEopoNC8lirZQNptSBc5d/6q1YKqSnxP0CftHotTSdInmJ5VSF1iobXPAMZNonsM
        eYUx1Q4hP4T3+9UEdbE6nwIwT1PoqUXhzH29Uo9ydIuKfMsC0VYzQ6lEUiosWPjPr9DOBD
        spNqHHDG2al0di/1olboJwLVV+jD/ySp5YRYQDmihxOUcZYcBwmbqzjRj07HZd7Y2ZyobG
        YxgQu9ibL9gDyodRcqdYTxDSqfikMS0EJznb1Tu6nmlmcN4zNJGpQLntnprEacvj9EYXbB
        WCPgW2gPLF4U0mFqKHJuQ1zdytukhVb+fbDeXM3x/qhpxlrmLTGb8KuHH0UmTA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546218;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=SI0zUhD78gIee7NkT3gBmNYIjOqWWknWc52+LC59j34=;
        b=+GV3zm8OWAwNx/CX3qW3e/bdFg7W8QPvlHaHBKfpCLOo+XItdzWgcO4SaELDSUdC923sCa
        AXf3QxtGyFhJnBCg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 01/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_8.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:17 +0200 (CEST)
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
 

