Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F39905303A4
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244590AbiEVOyw (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347562AbiEVOyw (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:52 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA1617AA7
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:51 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231289;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Ad9cejZom4SSfJN/jMFycv7IwoqfEEAZA7lBJnDidos=;
        b=RiRlsRJr2wRWJugz144w8UrGpkJqMp9xYfRQ8oApCZPv7HBq1bH39wsZJVWI+HOLoDtwER
        pKVwDxirM1RJoe/BEDJ64PeTQe1CjlTQ5+PU0sN8Wcjh03/FhSPO6N05Llx3E5JjcjRs+X
        ctNW3KM/VM7zr+OpLYJstES5XZHI9vp7+7r/YoHhLUqqRTyJetVgF8iTqQ00H3C5c7e8+t
        RTRebX5tGbQg50pPrNsUEFiZjxBTvBZW6QMuRsg5ha/FuqRxrFlT8kJMg9NECkGvpcBS0S
        u9PFHSkiY675BUoFrfRziu+czXUQ2JJrum1TDX3ZdN6A07GAwYehpRcU+N1I+A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231289;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Ad9cejZom4SSfJN/jMFycv7IwoqfEEAZA7lBJnDidos=;
        b=CW9h/4/0Jpz2xK9YIXURHDm7UmIeWNVunkXjEvdoTWrjl7axcAwlqjuoh42JUTvF5BobLG
        dd9XVyj6AOMh30CQ==
To:     Richard Fontana <rfontana@redhat.com>
Cc:     linux-spdx@vger.kernel.org
Subject: treewide: License cleanup - RedHat originated
Message-ID: <165322121770.3770149.18166071018834854082.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:49 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Richard!

Sorry for pestering you, but the amount of files is just too much to split
it up and targetting the authors is difficult because quite some of them
are not longer at RHT. The files are all (c) RedHat or Sistina Software,
which is part of RedHat since 2003.

This is part of the effort to clean up the licensing mess in the kernel and
convert it to SPDX license identifiers as the only source of license
information.

Archaeology found the following unspecific GPL license references, which
have been authored by RedHat/Sistina.

To clean this up, can you please either advise the RHT kernel team or let
me know which GPLv2 variant to use for the files and I run it through my
cleanup machinery.

Thanks,

	Thomas
	
1) this file is released under the gpl

   drivers/md/dm-bio-prison-v1.c
   drivers/md/dm-bio-prison-v1.h
   drivers/md/dm-bio-prison-v2.c
   drivers/md/dm-bio-prison-v2.h
   drivers/md/dm-bio-record.h
   drivers/md/dm-bufio.c
   drivers/md/dm-cache-background-tracker.c
   drivers/md/dm-cache-background-tracker.h
   drivers/md/dm-cache-block-types.h
   drivers/md/dm-cache-metadata.c
   drivers/md/dm-cache-metadata.h
   drivers/md/dm-cache-policy-internal.h
   drivers/md/dm-cache-policy-smq.c
   drivers/md/dm-cache-policy.c
   drivers/md/dm-cache-policy.h
   drivers/md/dm-cache-target.c
   drivers/md/dm-crypt.c
   drivers/md/dm-delay.c
   drivers/md/dm-ebs-target.c
   drivers/md/dm-exception-store.c
   drivers/md/dm-exception-store.h
   drivers/md/dm-flakey.c
   drivers/md/dm-integrity.c
   drivers/md/dm-io-tracker.h
   drivers/md/dm-io.c
   drivers/md/dm-ioctl.c
   drivers/md/dm-kcopyd.c
   drivers/md/dm-linear.c
   drivers/md/dm-log-writes.c
   drivers/md/dm-mpath.c
   drivers/md/dm-mpath.h
   drivers/md/dm-path-selector.c
   drivers/md/dm-path-selector.h
   drivers/md/dm-ps-queue-length.c
   drivers/md/dm-ps-round-robin.c
   drivers/md/dm-ps-service-time.c
   drivers/md/dm-raid.c
   drivers/md/dm-raid1.c
   drivers/md/dm-region-hash.c
   drivers/md/dm-rq.c
   drivers/md/dm-snap-persistent.c
   drivers/md/dm-snap-transient.c
   drivers/md/dm-snap.c
   drivers/md/dm-stripe.c
   drivers/md/dm-switch.c
   drivers/md/dm-sysfs.c
   drivers/md/dm-table.c
   drivers/md/dm-target.c
   drivers/md/dm-thin-metadata.c
   drivers/md/dm-thin-metadata.h
   drivers/md/dm-thin.c
   drivers/md/dm-unstripe.c
   drivers/md/dm-zero.c
   drivers/md/dm.c
   drivers/md/persistent-data/dm-array.c
   drivers/md/persistent-data/dm-array.h
   drivers/md/persistent-data/dm-bitset.c
   drivers/md/persistent-data/dm-bitset.h
   drivers/md/persistent-data/dm-block-manager.c
   drivers/md/persistent-data/dm-block-manager.h
   drivers/md/persistent-data/dm-btree-internal.h
   drivers/md/persistent-data/dm-btree-remove.c
   drivers/md/persistent-data/dm-btree-spine.c
   drivers/md/persistent-data/dm-btree.c
   drivers/md/persistent-data/dm-btree.h
   drivers/md/persistent-data/dm-persistent-data-internal.h
   drivers/md/persistent-data/dm-space-map-common.c
   drivers/md/persistent-data/dm-space-map-common.h
   drivers/md/persistent-data/dm-space-map-disk.c
   drivers/md/persistent-data/dm-space-map-disk.h
   drivers/md/persistent-data/dm-space-map-metadata.c
   drivers/md/persistent-data/dm-space-map-metadata.h
   drivers/md/persistent-data/dm-space-map.h
   drivers/md/persistent-data/dm-transaction-manager.c
   drivers/md/persistent-data/dm-transaction-manager.h
   include/linux/dm-bufio.h
   include/linux/dm-io.h
   include/linux/dm-kcopyd.h
   include/linux/dm-region-hash.h

2) this file is released under the lgpl

   drivers/md/dm-core.h
   drivers/md/dm-log-userspace-base.c
   drivers/md/dm-log-userspace-transfer.c
   drivers/md/dm-log-userspace-transfer.h
   drivers/md/dm-log.c
   drivers/md/dm-rq.h
   drivers/md/dm.h
   include/linux/device-mapper.h
   include/linux/dm-dirty-log.h

3) (c) 2000 red hat gpl d

   drivers/mtd/chips/cfi_cmdset_0001.c
   drivers/mtd/chips/cfi_cmdset_0020.c
   drivers/mtd/chips/cfi_probe.c
   drivers/mtd/chips/gen_probe.c
   drivers/mtd/chips/jedec_probe.c
   drivers/mtd/chips/map_ram.c
   drivers/mtd/chips/map_rom.c
   drivers/mtd/maps/solutionengine.c

4) this code is covered by the gpl

   drivers/mtd/chips/cfi_util.c

5) this software may be freely redistributed under the terms of the gnu
   general public license you should have received a copy of the gnu general
   public license along with this program if not write to the free software
   foundation inc 675 mass ave cambridge ma 02139 usa

   fs/afs/callback.c
   fs/afs/inode.c
   fs/afs/super.c

6) released under the general public license (gpl)

   lib/list_debug.c


