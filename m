Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFB305400D2
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242210AbiFGOLa (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245139AbiFGOLa (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:30 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48C47A3C23
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:26 -0700 (PDT)
Message-ID: <20220607131511.062158029@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611084;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=IWxgM1aG8WM6cvvBUPvqM0fJTITWZNLnBlMJF9V0hnA=;
        b=BSUuqgW3pE5E14MhkpN8E6tzDHhd4C+D+773d11MNVInsaCoDyPMgH0hYkq/ceMJt46lhp
        Ch7roGWPGmV6zHOBnRhKOvRT4MFxBKCtuqkPrUChx5oouz3YyM7p1eZY5MfDqtjclxOkRK
        qutvl/98vUVJTXPAiQTui2wJXtxvx9UCKt76oL4Z7humxa9MoUXmoMIT9e6hJ+Sj1BmMVn
        DfkcjVj4tQB43OOwtS9XJOaezmoxetX08md5Mo7XgKpddHP7Z31ZUlgienqRSbOibjjKbK
        idz19dKFKOnKfYCKm2FFNhNqtMOVxbaPx5iXVUl4gf6g4tOleBiFeo/31fbtsA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611084;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=IWxgM1aG8WM6cvvBUPvqM0fJTITWZNLnBlMJF9V0hnA=;
        b=0IFolwDe+/trDuyPYzJUzrR90suHBMahVdy6GEVEvzjmFr0k6QuDpdr19ks/M3KysPQiT+
        K5bMdItV2x+ungDg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 12/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_168.RULE (part 1)
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:24 +0200 (CEST)
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
 drivers/net/ethernet/cisco/enic/cq_desc.h       |   15 +--------------
 drivers/net/ethernet/cisco/enic/cq_enet_desc.h  |   15 +--------------
 drivers/net/ethernet/cisco/enic/enic.h          |   15 +--------------
 drivers/net/ethernet/cisco/enic/enic_api.c      |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_api.h      |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_dev.c      |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_dev.h      |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_ethtool.c  |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_pp.c       |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_pp.h       |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/enic_res.c      |   15 +--------------
 drivers/net/ethernet/cisco/enic/enic_res.h      |   15 +--------------
 drivers/net/ethernet/cisco/enic/rq_enet_desc.h  |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_cq.c       |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_cq.h       |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_dev.c      |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_dev.h      |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_devcmd.h   |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_enet.h     |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_intr.c     |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_intr.h     |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_nic.h      |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_resource.h |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_rq.c       |   16 +---------------
 drivers/net/ethernet/cisco/enic/vnic_rq.h       |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_rss.h      |   14 +-------------
 drivers/net/ethernet/cisco/enic/vnic_stats.h    |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_vic.c      |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/vnic_vic.h      |   19 ++-----------------
 drivers/net/ethernet/cisco/enic/vnic_wq.c       |   15 +--------------
 drivers/net/ethernet/cisco/enic/vnic_wq.h       |   15 +--------------
 drivers/net/ethernet/cisco/enic/wq_enet_desc.h  |   15 +--------------
 drivers/scsi/fnic/cq_desc.h                     |   14 +-------------
 drivers/scsi/fnic/cq_enet_desc.h                |   14 +-------------
 drivers/scsi/fnic/cq_exch_desc.h                |   14 +-------------
 drivers/scsi/fnic/fcpio.h                       |   14 +-------------
 drivers/scsi/fnic/fnic.h                        |   14 +-------------
 drivers/scsi/fnic/fnic_attrs.c                  |   14 +-------------
 drivers/scsi/fnic/fnic_debugfs.c                |   18 ++----------------
 drivers/scsi/fnic/fnic_fcs.c                    |   14 +-------------
 drivers/scsi/fnic/fnic_fip.h                    |   14 +-------------
 drivers/scsi/fnic/fnic_io.h                     |   14 +-------------
 drivers/scsi/fnic/fnic_isr.c                    |   15 +--------------
 drivers/scsi/fnic/fnic_main.c                   |   15 +--------------
 drivers/scsi/fnic/fnic_res.c                    |   14 +-------------
 drivers/scsi/fnic/fnic_res.h                    |   14 +-------------
 drivers/scsi/fnic/fnic_scsi.c                   |   14 +-------------
 drivers/scsi/fnic/fnic_stats.h                  |   18 ++----------------
 drivers/scsi/fnic/fnic_trace.c                  |   18 ++----------------
 drivers/scsi/fnic/fnic_trace.h                  |   18 ++----------------
 drivers/scsi/fnic/rq_enet_desc.h                |   14 +-------------
 drivers/scsi/fnic/vnic_cq.c                     |   14 +-------------
 drivers/scsi/fnic/vnic_cq.h                     |   14 +-------------
 drivers/scsi/fnic/vnic_cq_copy.h                |   14 +-------------
 drivers/scsi/fnic/vnic_dev.c                    |   14 +-------------
 drivers/scsi/fnic/vnic_dev.h                    |   14 +-------------
 drivers/scsi/fnic/vnic_devcmd.h                 |   14 +-------------
 drivers/scsi/fnic/vnic_intr.c                   |   14 +-------------
 drivers/scsi/fnic/vnic_intr.h                   |   14 +-------------
 drivers/scsi/fnic/vnic_nic.h                    |   14 +-------------
 drivers/scsi/fnic/vnic_resource.h               |   14 +-------------
 drivers/scsi/fnic/vnic_rq.c                     |   15 +--------------
 drivers/scsi/fnic/vnic_rq.h                     |   14 +-------------
 drivers/scsi/fnic/vnic_scsi.h                   |   14 +-------------
 drivers/scsi/fnic/vnic_stats.h                  |   14 +-------------
 drivers/scsi/fnic/vnic_wq.c                     |   14 +-------------
 drivers/scsi/fnic/vnic_wq.h                     |   14 +-------------
 drivers/scsi/fnic/vnic_wq_copy.c                |   15 +--------------
 drivers/scsi/fnic/vnic_wq_copy.h                |   14 +-------------
 drivers/scsi/fnic/wq_enet_desc.h                |   14 +-------------
 drivers/scsi/snic/cq_desc.h                     |   18 ++----------------
 drivers/scsi/snic/cq_enet_desc.h                |   18 ++----------------
 drivers/scsi/snic/snic.h                        |   18 ++----------------
 73 files changed, 89 insertions(+), 1033 deletions(-)

--- a/drivers/net/ethernet/cisco/enic/cq_desc.h
+++ b/drivers/net/ethernet/cisco/enic/cq_desc.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _CQ_DESC_H_
--- a/drivers/net/ethernet/cisco/enic/cq_enet_desc.h
+++ b/drivers/net/ethernet/cisco/enic/cq_enet_desc.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _CQ_ENET_DESC_H_
--- a/drivers/net/ethernet/cisco/enic/enic.h
+++ b/drivers/net/ethernet/cisco/enic/enic.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _ENIC_H_
--- a/drivers/net/ethernet/cisco/enic/enic_api.c
+++ b/drivers/net/ethernet/cisco/enic/enic_api.c
@@ -1,20 +1,5 @@
-/*
- * Copyright 2013 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2013 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/netdevice.h>
 #include <linux/spinlock.h>
--- a/drivers/net/ethernet/cisco/enic/enic_api.h
+++ b/drivers/net/ethernet/cisco/enic/enic_api.h
@@ -1,20 +1,5 @@
-/**
- * Copyright 2013 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2013 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __ENIC_API_H__
 #define __ENIC_API_H__
--- a/drivers/net/ethernet/cisco/enic/enic_dev.c
+++ b/drivers/net/ethernet/cisco/enic/enic_dev.c
@@ -1,20 +1,5 @@
-/*
- * Copyright 2011 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2011 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/pci.h>
 #include <linux/etherdevice.h>
--- a/drivers/net/ethernet/cisco/enic/enic_dev.h
+++ b/drivers/net/ethernet/cisco/enic/enic_dev.h
@@ -1,20 +1,5 @@
-/*
- * Copyright 2011 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2011 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _ENIC_DEV_H_
 #define _ENIC_DEV_H_
--- a/drivers/net/ethernet/cisco/enic/enic_ethtool.c
+++ b/drivers/net/ethernet/cisco/enic/enic_ethtool.c
@@ -1,20 +1,5 @@
-/*
- * Copyright 2013 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2013 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/netdevice.h>
 #include <linux/ethtool.h>
--- a/drivers/net/ethernet/cisco/enic/enic_pp.c
+++ b/drivers/net/ethernet/cisco/enic/enic_pp.c
@@ -1,20 +1,5 @@
-/*
- * Copyright 2011 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2011 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/kernel.h>
 #include <linux/string.h>
--- a/drivers/net/ethernet/cisco/enic/enic_pp.h
+++ b/drivers/net/ethernet/cisco/enic/enic_pp.h
@@ -1,20 +1,5 @@
-/*
- * Copyright 2011 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2011 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _ENIC_PP_H_
 #define _ENIC_PP_H_
--- a/drivers/net/ethernet/cisco/enic/enic_res.c
+++ b/drivers/net/ethernet/cisco/enic/enic_res.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/ethernet/cisco/enic/enic_res.h
+++ b/drivers/net/ethernet/cisco/enic/enic_res.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _ENIC_RES_H_
--- a/drivers/net/ethernet/cisco/enic/rq_enet_desc.h
+++ b/drivers/net/ethernet/cisco/enic/rq_enet_desc.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _RQ_ENET_DESC_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_cq.c
+++ b/drivers/net/ethernet/cisco/enic/vnic_cq.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/ethernet/cisco/enic/vnic_cq.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_cq.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_CQ_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_dev.c
+++ b/drivers/net/ethernet/cisco/enic/vnic_dev.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/ethernet/cisco/enic/vnic_dev.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_dev.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_DEV_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_devcmd.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_devcmd.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_DEVCMD_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_enet.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_enet.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_ENIC_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_intr.c
+++ b/drivers/net/ethernet/cisco/enic/vnic_intr.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/ethernet/cisco/enic/vnic_intr.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_intr.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_INTR_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_nic.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_nic.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_NIC_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_resource.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_resource.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_RESOURCE_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_rq.c
+++ b/drivers/net/ethernet/cisco/enic/vnic_rq.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #include <linux/kernel.h>
@@ -216,4 +203,3 @@ void vnic_rq_clean(struct vnic_rq *rq,
 
 	vnic_dev_clear_desc_ring(&rq->ring);
 }
-
--- a/drivers/net/ethernet/cisco/enic/vnic_rq.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_rq.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_RQ_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_rss.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_rss.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #ifndef _VNIC_RSS_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_stats.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_stats.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_STATS_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_vic.c
+++ b/drivers/net/ethernet/cisco/enic/vnic_vic.c
@@ -1,20 +1,5 @@
-/*
- * Copyright 2010 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2010 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/kernel.h>
 #include <linux/errno.h>
--- a/drivers/net/ethernet/cisco/enic/vnic_vic.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_vic.h
@@ -1,20 +1,5 @@
-/*
- * Copyright 2010 Cisco Systems, Inc.  All rights reserved.
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
- *
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright 2010 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef _VNIC_VIC_H_
 #define _VNIC_VIC_H_
--- a/drivers/net/ethernet/cisco/enic/vnic_wq.c
+++ b/drivers/net/ethernet/cisco/enic/vnic_wq.c
@@ -1,20 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #include <linux/kernel.h>
--- a/drivers/net/ethernet/cisco/enic/vnic_wq.h
+++ b/drivers/net/ethernet/cisco/enic/vnic_wq.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _VNIC_WQ_H_
--- a/drivers/net/ethernet/cisco/enic/wq_enet_desc.h
+++ b/drivers/net/ethernet/cisco/enic/wq_enet_desc.h
@@ -1,20 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008-2010 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
- *
  */
 
 #ifndef _WQ_ENET_DESC_H_
--- a/drivers/scsi/fnic/cq_desc.h
+++ b/drivers/scsi/fnic/cq_desc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _CQ_DESC_H_
 #define _CQ_DESC_H_
--- a/drivers/scsi/fnic/cq_enet_desc.h
+++ b/drivers/scsi/fnic/cq_enet_desc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _CQ_ENET_DESC_H_
 #define _CQ_ENET_DESC_H_
--- a/drivers/scsi/fnic/cq_exch_desc.h
+++ b/drivers/scsi/fnic/cq_exch_desc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _CQ_EXCH_DESC_H_
 #define _CQ_EXCH_DESC_H_
--- a/drivers/scsi/fnic/fcpio.h
+++ b/drivers/scsi/fnic/fcpio.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _FCPIO_H_
 #define _FCPIO_H_
--- a/drivers/scsi/fnic/fnic.h
+++ b/drivers/scsi/fnic/fnic.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _FNIC_H_
 #define _FNIC_H_
--- a/drivers/scsi/fnic/fnic_attrs.c
+++ b/drivers/scsi/fnic/fnic_attrs.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/string.h>
 #include <linux/device.h>
--- a/drivers/scsi/fnic/fnic_debugfs.c
+++ b/drivers/scsi/fnic/fnic_debugfs.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2012 Cisco Systems, Inc.  All rights reserved.
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
+// Copyright 2012 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/module.h>
 #include <linux/errno.h>
--- a/drivers/scsi/fnic/fnic_fcs.c
+++ b/drivers/scsi/fnic/fnic_fcs.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/errno.h>
 #include <linux/pci.h>
--- a/drivers/scsi/fnic/fnic_fip.h
+++ b/drivers/scsi/fnic/fnic_fip.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #ifndef _FNIC_FIP_H_
--- a/drivers/scsi/fnic/fnic_io.h
+++ b/drivers/scsi/fnic/fnic_io.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _FNIC_IO_H_
 #define _FNIC_IO_H_
--- a/drivers/scsi/fnic/fnic_isr.c
+++ b/drivers/scsi/fnic/fnic_isr.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/string.h>
 #include <linux/errno.h>
@@ -332,4 +320,3 @@ void fnic_clear_intr_mode(struct fnic *f
 	pci_free_irq_vectors(fnic->pdev);
 	vnic_dev_set_intr_mode(fnic->vdev, VNIC_DEV_INTR_MODE_INTX);
 }
-
--- a/drivers/scsi/fnic/fnic_main.c
+++ b/drivers/scsi/fnic/fnic_main.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/module.h>
 #include <linux/mempool.h>
@@ -1159,4 +1147,3 @@ static void __exit fnic_cleanup_module(v
 
 module_init(fnic_init_module);
 module_exit(fnic_cleanup_module);
-
--- a/drivers/scsi/fnic/fnic_res.c
+++ b/drivers/scsi/fnic/fnic_res.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/errno.h>
 #include <linux/types.h>
--- a/drivers/scsi/fnic/fnic_res.h
+++ b/drivers/scsi/fnic/fnic_res.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _FNIC_RES_H_
 #define _FNIC_RES_H_
--- a/drivers/scsi/fnic/fnic_scsi.c
+++ b/drivers/scsi/fnic/fnic_scsi.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/mempool.h>
 #include <linux/errno.h>
--- a/drivers/scsi/fnic/fnic_stats.h
+++ b/drivers/scsi/fnic/fnic_stats.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2013 Cisco Systems, Inc.  All rights reserved.
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
+/* Copyright 2013 Cisco Systems, Inc.  All rights reserved. */
 #ifndef _FNIC_STATS_H_
 #define _FNIC_STATS_H_
 
--- a/drivers/scsi/fnic/fnic_trace.c
+++ b/drivers/scsi/fnic/fnic_trace.c
@@ -1,19 +1,5 @@
-/*
- * Copyright 2012 Cisco Systems, Inc.  All rights reserved.
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
+// Copyright 2012 Cisco Systems, Inc.  All rights reserved.
 
 #include <linux/module.h>
 #include <linux/mempool.h>
--- a/drivers/scsi/fnic/fnic_trace.h
+++ b/drivers/scsi/fnic/fnic_trace.h
@@ -1,19 +1,5 @@
-/*
- * Copyright 2012 Cisco Systems, Inc.  All rights reserved.
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
+/* Copyright 2012 Cisco Systems, Inc.  All rights reserved. */
 
 #ifndef __FNIC_TRACE_H__
 #define __FNIC_TRACE_H__
--- a/drivers/scsi/fnic/rq_enet_desc.h
+++ b/drivers/scsi/fnic/rq_enet_desc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _RQ_ENET_DESC_H_
 #define _RQ_ENET_DESC_H_
--- a/drivers/scsi/fnic/vnic_cq.c
+++ b/drivers/scsi/fnic/vnic_cq.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #include <linux/errno.h>
 #include <linux/types.h>
--- a/drivers/scsi/fnic/vnic_cq.h
+++ b/drivers/scsi/fnic/vnic_cq.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_CQ_H_
 #define _VNIC_CQ_H_
--- a/drivers/scsi/fnic/vnic_cq_copy.h
+++ b/drivers/scsi/fnic/vnic_cq_copy.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_CQ_COPY_H_
 #define _VNIC_CQ_COPY_H_
--- a/drivers/scsi/fnic/vnic_dev.c
+++ b/drivers/scsi/fnic/vnic_dev.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #include <linux/kernel.h>
--- a/drivers/scsi/fnic/vnic_dev.h
+++ b/drivers/scsi/fnic/vnic_dev.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_DEV_H_
 #define _VNIC_DEV_H_
--- a/drivers/scsi/fnic/vnic_devcmd.h
+++ b/drivers/scsi/fnic/vnic_devcmd.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_DEVCMD_H_
 #define _VNIC_DEVCMD_H_
--- a/drivers/scsi/fnic/vnic_intr.c
+++ b/drivers/scsi/fnic/vnic_intr.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #include <linux/kernel.h>
--- a/drivers/scsi/fnic/vnic_intr.h
+++ b/drivers/scsi/fnic/vnic_intr.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_INTR_H_
 #define _VNIC_INTR_H_
--- a/drivers/scsi/fnic/vnic_nic.h
+++ b/drivers/scsi/fnic/vnic_nic.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_NIC_H_
 #define _VNIC_NIC_H_
--- a/drivers/scsi/fnic/vnic_resource.h
+++ b/drivers/scsi/fnic/vnic_resource.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_RESOURCE_H_
 #define _VNIC_RESOURCE_H_
--- a/drivers/scsi/fnic/vnic_rq.c
+++ b/drivers/scsi/fnic/vnic_rq.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #include <linux/errno.h>
@@ -191,4 +179,3 @@ void vnic_rq_clean(struct vnic_rq *rq,
 
 	vnic_dev_clear_desc_ring(&rq->ring);
 }
-
--- a/drivers/scsi/fnic/vnic_rq.h
+++ b/drivers/scsi/fnic/vnic_rq.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_RQ_H_
 #define _VNIC_RQ_H_
--- a/drivers/scsi/fnic/vnic_scsi.h
+++ b/drivers/scsi/fnic/vnic_scsi.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_SCSI_H_
 #define _VNIC_SCSI_H_
--- a/drivers/scsi/fnic/vnic_stats.h
+++ b/drivers/scsi/fnic/vnic_stats.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_STATS_H_
 #define _VNIC_STATS_H_
--- a/drivers/scsi/fnic/vnic_wq.c
+++ b/drivers/scsi/fnic/vnic_wq.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #include <linux/errno.h>
--- a/drivers/scsi/fnic/vnic_wq.h
+++ b/drivers/scsi/fnic/vnic_wq.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_WQ_H_
 #define _VNIC_WQ_H_
--- a/drivers/scsi/fnic/vnic_wq_copy.c
+++ b/drivers/scsi/fnic/vnic_wq_copy.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 
 #include <linux/errno.h>
@@ -108,4 +96,3 @@ void vnic_wq_copy_init(struct vnic_wq_co
 	iowrite32(error_interrupt_enable, &wq->ctrl->error_interrupt_enable);
 	iowrite32(error_interrupt_offset, &wq->ctrl->error_interrupt_offset);
 }
-
--- a/drivers/scsi/fnic/vnic_wq_copy.h
+++ b/drivers/scsi/fnic/vnic_wq_copy.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _VNIC_WQ_COPY_H_
 #define _VNIC_WQ_COPY_H_
--- a/drivers/scsi/fnic/wq_enet_desc.h
+++ b/drivers/scsi/fnic/wq_enet_desc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
  * Copyright 2007 Nuova Systems, Inc.  All rights reserved.
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
 #ifndef _WQ_ENET_DESC_H_
 #define _WQ_ENET_DESC_H_
--- a/drivers/scsi/snic/cq_desc.h
+++ b/drivers/scsi/snic/cq_desc.h
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
 
 #ifndef _CQ_DESC_H_
 #define _CQ_DESC_H_
--- a/drivers/scsi/snic/cq_enet_desc.h
+++ b/drivers/scsi/snic/cq_enet_desc.h
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
 
 #ifndef _CQ_ENET_DESC_H_
 #define _CQ_ENET_DESC_H_
--- a/drivers/scsi/snic/snic.h
+++ b/drivers/scsi/snic/snic.h
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
 
 #ifndef _SNIC_H_
 #define _SNIC_H_

