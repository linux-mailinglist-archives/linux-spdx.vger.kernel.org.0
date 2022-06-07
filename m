Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5685400D3
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245139AbiFGOLb (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244153AbiFGOLa (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:30 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C5FA9B184
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:27 -0700 (PDT)
Message-ID: <20220607131511.120198134@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611085;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=fgjD4V1CMM2EMeZrZ0oYwLHUX0ZDQoHTQH0QKRCyiM0=;
        b=yE2M4rZ4HvSzmHXqbXPeHgtmlc+icieHoYZ1PJqEg6OvO7QX32HGdvAaN55xU2Sh6v4DCV
        CeiM9UIS+Gj/GxI15MJP8tXzz3BTTHWaB2AqRNETnmilWzFcc3pu7Ib/YnhWMH3vreKse0
        LmeLvE+SUMhtK+CKtvBm1WDCQ/cvwv3XY5nu34fukqhtKemZAShJ55MyNaCyELdLLpPC7H
        UHz9oceJXCfMR5Hcn1/PbDVoKpnG/vbJV21BajhDkE9RC63czQZaHAkxQmIkyXHKL66CVx
        jBVIwBDa0ik9n6mTINcPpjvoQ7yKRB70LE0hS1PKCnL45MCEI7Og3BipQkMtww==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611085;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=fgjD4V1CMM2EMeZrZ0oYwLHUX0ZDQoHTQH0QKRCyiM0=;
        b=iugx/llvEwEDVkE76zkRt4Aknkys+/gA/urtCQUK1E+o+fJ9v3ZDKGM7VEYAnX6A8d/ONA
        Hp4HS9JzB5rLTcBg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 13/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_168.RULE (part 2)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:25 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    this program is free software you may redistribute it and/or modify it
    under the terms of the gnu general public license as published by the
    free software foundation version 2 of the license  the software is
    provided as is without warranty of any kind express or implied
    including but not limited to the warranties of merchantability fitness
    for a particular purpose and noninfringement in no event shall the
    authors or copyright holders be liable for any claim damages or other
    liability whether in an action of contract tort or otherwise arising
    from out of or in connection with the software or the use or other
    dealings in the software

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/scsi/snic/snic_attrs.c    |   18 ++----------------
 drivers/scsi/snic/snic_ctl.c      |   18 ++----------------
 drivers/scsi/snic/snic_debugfs.c  |   18 ++----------------
 drivers/scsi/snic/snic_disc.c     |   18 ++----------------
 drivers/scsi/snic/snic_disc.h     |   18 ++----------------
 drivers/scsi/snic/snic_fwint.h    |   18 ++----------------
 drivers/scsi/snic/snic_io.c       |   18 ++----------------
 drivers/scsi/snic/snic_io.h       |   18 ++----------------
 drivers/scsi/snic/snic_isr.c      |   18 ++----------------
 drivers/scsi/snic/snic_main.c     |   18 ++----------------
 drivers/scsi/snic/snic_res.c      |   18 ++----------------
 drivers/scsi/snic/snic_res.h      |   18 ++----------------
 drivers/scsi/snic/snic_scsi.c     |   18 ++----------------
 drivers/scsi/snic/snic_stats.h    |   18 ++----------------
 drivers/scsi/snic/snic_trc.c      |   18 ++----------------
 drivers/scsi/snic/snic_trc.h      |   18 ++----------------
 drivers/scsi/snic/vnic_cq.c       |   18 ++----------------
 drivers/scsi/snic/vnic_cq.h       |   18 ++----------------
 drivers/scsi/snic/vnic_cq_fw.h    |   18 ++----------------
 drivers/scsi/snic/vnic_dev.c      |   18 ++----------------
 drivers/scsi/snic/vnic_dev.h      |   18 ++----------------
 drivers/scsi/snic/vnic_devcmd.h   |   18 ++----------------
 drivers/scsi/snic/vnic_intr.c     |   18 ++----------------
 drivers/scsi/snic/vnic_intr.h     |   18 ++----------------
 drivers/scsi/snic/vnic_resource.h |   18 ++----------------
 drivers/scsi/snic/vnic_snic.h     |   18 ++----------------
 drivers/scsi/snic/vnic_stats.h    |   18 ++----------------
 drivers/scsi/snic/vnic_wq.c       |   18 ++----------------
 drivers/scsi/snic/vnic_wq.h       |   18 ++----------------
 drivers/scsi/snic/wq_enet_desc.h  |   18 ++----------------
 include/media/i2c/ov2659.h        |   14 +-------------
 samples/v4l/v4l2-pci-skeleton.c   |   14 +-------------
 32 files changed, 62 insertions(+), 506 deletions(-)

--- a/drivers/scsi/snic/snic_attrs.c
+++ b/drivers/scsi/snic/snic_attrs.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/string.h>
 #include <linux/device.h>
--- a/drivers/scsi/snic/snic_ctl.c
+++ b/drivers/scsi/snic/snic_ctl.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/errno.h>
 #include <linux/pci.h>
--- a/drivers/scsi/snic/snic_debugfs.c
+++ b/drivers/scsi/snic/snic_debugfs.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/module.h>
 #include <linux/errno.h>
--- a/drivers/scsi/snic/snic_disc.c
+++ b/drivers/scsi/snic/snic_disc.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/errno.h>
 #include <linux/mempool.h>
--- a/drivers/scsi/snic/snic_disc.h
+++ b/drivers/scsi/snic/snic_disc.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __SNIC_DISC_H
 #define __SNIC_DISC_H
--- a/drivers/scsi/snic/snic_fwint.h
+++ b/drivers/scsi/snic/snic_fwint.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __SNIC_FWINT_H
 #define __SNIC_FWINT_H
--- a/drivers/scsi/snic/snic_io.c
+++ b/drivers/scsi/snic/snic_io.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/errno.h>
 #include <linux/pci.h>
--- a/drivers/scsi/snic/snic_io.h
+++ b/drivers/scsi/snic/snic_io.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _SNIC_IO_H
 #define _SNIC_IO_H
--- a/drivers/scsi/snic/snic_isr.c
+++ b/drivers/scsi/snic/snic_isr.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/string.h>
 #include <linux/errno.h>
--- a/drivers/scsi/snic/snic_main.c
+++ b/drivers/scsi/snic/snic_main.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/module.h>
 #include <linux/mempool.h>
--- a/drivers/scsi/snic/snic_res.c
+++ b/drivers/scsi/snic/snic_res.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/errno.h>
 #include <linux/types.h>
--- a/drivers/scsi/snic/snic_res.h
+++ b/drivers/scsi/snic/snic_res.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __SNIC_RES_H
 #define __SNIC_RES_H
--- a/drivers/scsi/snic/snic_scsi.c
+++ b/drivers/scsi/snic/snic_scsi.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/mempool.h>
 #include <linux/errno.h>
--- a/drivers/scsi/snic/snic_stats.h
+++ b/drivers/scsi/snic/snic_stats.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __SNIC_STATS_H
 #define __SNIC_STATS_H
--- a/drivers/scsi/snic/snic_trc.c
+++ b/drivers/scsi/snic/snic_trc.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/module.h>
 #include <linux/mempool.h>
--- a/drivers/scsi/snic/snic_trc.h
+++ b/drivers/scsi/snic/snic_trc.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __SNIC_TRC_H
 #define __SNIC_TRC_H
--- a/drivers/scsi/snic/vnic_cq.c
+++ b/drivers/scsi/snic/vnic_cq.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/errno.h>
 #include <linux/types.h>
--- a/drivers/scsi/snic/vnic_cq.h
+++ b/drivers/scsi/snic/vnic_cq.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_CQ_H_
 #define _VNIC_CQ_H_
--- a/drivers/scsi/snic/vnic_cq_fw.h
+++ b/drivers/scsi/snic/vnic_cq_fw.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_CQ_FW_H_
 #define _VNIC_CQ_FW_H_
--- a/drivers/scsi/snic/vnic_dev.c
+++ b/drivers/scsi/snic/vnic_dev.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/kernel.h>
 #include <linux/errno.h>
--- a/drivers/scsi/snic/vnic_dev.h
+++ b/drivers/scsi/snic/vnic_dev.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_DEV_H_
 #define _VNIC_DEV_H_
--- a/drivers/scsi/snic/vnic_devcmd.h
+++ b/drivers/scsi/snic/vnic_devcmd.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_DEVCMD_H_
 #define _VNIC_DEVCMD_H_
--- a/drivers/scsi/snic/vnic_intr.c
+++ b/drivers/scsi/snic/vnic_intr.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/kernel.h>
 #include <linux/errno.h>
--- a/drivers/scsi/snic/vnic_intr.h
+++ b/drivers/scsi/snic/vnic_intr.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_INTR_H_
 #define _VNIC_INTR_H_
--- a/drivers/scsi/snic/vnic_resource.h
+++ b/drivers/scsi/snic/vnic_resource.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_RESOURCE_H_
 #define _VNIC_RESOURCE_H_
--- a/drivers/scsi/snic/vnic_snic.h
+++ b/drivers/scsi/snic/vnic_snic.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_SNIC_H_
 #define _VNIC_SNIC_H_
--- a/drivers/scsi/snic/vnic_stats.h
+++ b/drivers/scsi/snic/vnic_stats.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_STATS_H_
 #define _VNIC_STATS_H_
--- a/drivers/scsi/snic/vnic_wq.c
+++ b/drivers/scsi/snic/vnic_wq.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2014 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/errno.h>
 #include <linux/types.h>
--- a/drivers/scsi/snic/vnic_wq.h
+++ b/drivers/scsi/snic/vnic_wq.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_WQ_H_
 #define _VNIC_WQ_H_
--- a/drivers/scsi/snic/wq_enet_desc.h
+++ b/drivers/scsi/snic/wq_enet_desc.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2014 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2014 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _WQ_ENET_DESC_H_
 #define _WQ_ENET_DESC_H_
--- a/include/media/i2c/ov2659.h
+++ b/include/media/i2c/ov2659.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Omnivision OV2659 CMOS Image Sensor driver
  *
@@ -5,19 +6,6 @@
  *
  * Benoit Parrot <bparrot@ti.com>
  * Lad, Prabhakar <prabhakar.csengg@gmail.com>
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
  */
 
 #ifndef OV2659_H
--- a/samples/v4l/v4l2-pci-skeleton.c
+++ b/samples/v4l/v4l2-pci-skeleton.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * This is a V4L2 PCI Skeleton Driver. It gives an initial skeleton source
  * for use with other PCI drivers.
@@ -6,19 +7,6 @@
  * input 0 and an HDMI connector as input 1.
  *
  * Copyright 2014 Cisco Systems, Inc. and/or its affiliates. All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
  */
 
 #include <linux/types.h>

