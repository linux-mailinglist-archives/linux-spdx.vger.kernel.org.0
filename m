Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF445400D4
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245140AbiFGOLd (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245141AbiFGOLb (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:31 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A193BA0057
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:29 -0700 (PDT)
Message-ID: <20220607131511.236169402@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611088;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=U6umOJ1QAeAaArdKDRosok2gBK9BUXkGZ2ebSJEjw1I=;
        b=MK3aQr1Kw6J1wjjYRSaTA+sm/fFQq7G6aJGlhCGMB0NVnljIow7bBH7CvO0NavnMmgEIHB
        GlZjwkClshQXjT5nUOApo51SN+imumoElRcFhbDFU49mcZlGWjmW/nGr42QUEjXFEwqv/1
        7geqKNMU7jyjHlTITDLLaadrpJi3eKGLyO1p/jrtdaWE5ufB+KOjNnG2/Tq5He73nrEVf9
        rzpFBM6ubEzISBWp3xWMt65oNcg0ho030gGFGtnfOtD9zwBEZPaKas3Uucevt55v9xqb2Y
        KTYeAs1ejWsOJTiI8PbL9Rea1Hju/aVMQhpjS8Ljc78hZ09R+1WUdg4OW1/WFg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611088;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=U6umOJ1QAeAaArdKDRosok2gBK9BUXkGZ2ebSJEjw1I=;
        b=oAdpqsgMTEnfwudELytykP5I13deB2wPyLIPuIjXrVJgOV4Yi3H6D8cIviIiWDvOWFQYXR
        VjovAOfmoV8rUECQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 15/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_292.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:27 +0200 (CEST)
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
    published by the free software foundation  you should have received a
    copy of the gnu general public license along with this program if not
    see <http://www gnu org/licenses/>  this software is provided as is
    and without any express or implied warranties including without
    limitation the implied warranties of merchantability and fitness for a
    particular purpose

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 drivers/net/ethernet/chelsio/cxgb/common.h            |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/cphy.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/cpl5_cmd.h          |   12 +-----------
 drivers/net/ethernet/chelsio/cxgb/elmer0.h            |   12 +-----------
 drivers/net/ethernet/chelsio/cxgb/espi.c              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/espi.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/gmac.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/mv88x201x.c         |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/pm3393.c            |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/regs.h              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/sge.c               |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/sge.h               |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/subr.c              |   11 +----------
 drivers/net/ethernet/chelsio/cxgb/suni1x10gexp_regs.h |   12 +-----------
 14 files changed, 14 insertions(+), 143 deletions(-)

--- a/drivers/net/ethernet/chelsio/cxgb/common.h
+++ b/drivers/net/ethernet/chelsio/cxgb/common.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: common.h                                                            *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/cphy.h
+++ b/drivers/net/ethernet/chelsio/cxgb/cphy.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: cphy.h                                                              *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/cpl5_cmd.h
+++ b/drivers/net/ethernet/chelsio/cxgb/cpl5_cmd.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: cpl5_cmd.h                                                          *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
@@ -635,4 +626,3 @@ struct cpl_mss_change {
 };
 
 #endif /* _CXGB_CPL5_CMD_H_ */
-
--- a/drivers/net/ethernet/chelsio/cxgb/elmer0.h
+++ b/drivers/net/ethernet/chelsio/cxgb/elmer0.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: elmer0.h                                                            *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
@@ -154,4 +145,3 @@ enum {
 #define MI1_OP_INDIRECT_READ     3
 
 #endif /* _CXGB_ELMER0_H_ */
-
--- a/drivers/net/ethernet/chelsio/cxgb/espi.c
+++ b/drivers/net/ethernet/chelsio/cxgb/espi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: espi.c                                                              *
@@ -7,16 +8,6 @@
  *  Ethernet SPI functionality.                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/espi.h
+++ b/drivers/net/ethernet/chelsio/cxgb/espi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: espi.h                                                              *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/gmac.h
+++ b/drivers/net/ethernet/chelsio/cxgb/gmac.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: gmac.h                                                              *
@@ -7,16 +8,6 @@
  *  Generic MAC functionality.                                               *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/mv88x201x.c
+++ b/drivers/net/ethernet/chelsio/cxgb/mv88x201x.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: mv88x201x.c                                                         *
@@ -7,16 +8,6 @@
  *  Marvell PHY (mv88x201x) functionality.                                   *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/pm3393.c
+++ b/drivers/net/ethernet/chelsio/cxgb/pm3393.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: pm3393.c                                                            *
@@ -7,16 +8,6 @@
  *  PMC/SIERRA (pm3393) MAC-PHY functionality.                               *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/regs.h
+++ b/drivers/net/ethernet/chelsio/cxgb/regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: regs.h                                                              *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb/sge.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: sge.c                                                               *
@@ -7,16 +8,6 @@
  *  DMA engine.                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/sge.h
+++ b/drivers/net/ethernet/chelsio/cxgb/sge.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: sge.h                                                               *
@@ -6,16 +7,6 @@
  * Description:                                                              *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/subr.c
+++ b/drivers/net/ethernet/chelsio/cxgb/subr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*****************************************************************************
  *                                                                           *
  * File: subr.c                                                              *
@@ -7,16 +8,6 @@
  *  Various subroutines (intr,pio,etc.) used by Chelsio 10G Ethernet driver. *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
--- a/drivers/net/ethernet/chelsio/cxgb/suni1x10gexp_regs.h
+++ b/drivers/net/ethernet/chelsio/cxgb/suni1x10gexp_regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*****************************************************************************
  *                                                                           *
  * File: suni1x10gexp_regs.h                                                 *
@@ -7,16 +8,6 @@
  *  PMC/SIERRA (pm3393) MAC-PHY functionality.                               *
  *  part of the Chelsio 10Gb Ethernet Driver.                                *
  *                                                                           *
- * This program is free software; you can redistribute it and/or modify      *
- * it under the terms of the GNU General Public License, version 2, as       *
- * published by the Free Software Foundation.                                *
- *                                                                           *
- * You should have received a copy of the GNU General Public License along   *
- * with this program; if not, see <http://www.gnu.org/licenses/>.            *
- *                                                                           *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED    *
- * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF      *
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.                     *
  *                                                                           *
  * http://www.chelsio.com                                                    *
  *                                                                           *
@@ -1639,4 +1630,3 @@
 #define SUNI1x10GEXP_BITMSK_PL4IDU_DIP4I       0x0002
 
 #endif /* _CXGB_SUNI1x10GEXP_REGS_H_ */
-

