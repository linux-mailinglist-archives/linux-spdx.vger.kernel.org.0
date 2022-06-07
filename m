Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA08A53FE83
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 14:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233904AbiFGMOi (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 08:14:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243532AbiFGMOg (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 08:14:36 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9E50C4E9A
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:14:34 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654604072;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=By5uMbWAKBCbK9Og0PP5rIYYIecphU5qowiDYOAbByg=;
        b=hEhsvFsXTZxPmVkBjgtZo3qs6GprOF5Px6tc4LLudGSTbbTqDTBX48ek60vVmLR5qEY12M
        9HkcUIZeEynct4kAggbnQt09c7FP1qDS8blrkyzpCEDyvIcSykUXaWO29CEgNhxiFp6ICE
        sXU7tXqqeMVtIRY9P0vhS+Tq99jcaxU7eEb2PLmyp72F8tvGqurVIATn+COUEuU+KhtgBu
        94cJ1ZY+wHSPKtkQN8n+o2SPafV26VCnpViBAqEvScSmhGB4E4J8Gi0WGDYcdRwMbw2uxt
        N9JTciQQyrzYr9MOp9n8MaX3nz8d/XlsjYsZm8DcL7BOUsLd2ISMuey6BSOrnQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654604072;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=By5uMbWAKBCbK9Og0PP5rIYYIecphU5qowiDYOAbByg=;
        b=taqJRr50RDGB7eJrJnCH9rolvPgtT/VHM+3yv51osXOP9Rl3tJrzatp5fug9DbVGfAr78H
        opjVVD/i5Qtzf2Dg==
To:     Greg KH <greg@kroah.com>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [patch 01/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_8.RULE
In-Reply-To: <Yp8vcm4WBF7mQi5p@kroah.com>
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.120819557@linutronix.de> <Yp8vcm4WBF7mQi5p@kroah.com>
Date:   Tue, 07 Jun 2022 14:14:32 +0200
Message-ID: <87v8tc4qmv.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jun 07 2022 at 12:58, Greg KH wrote:
> On Mon, Jun 06, 2022 at 10:10:17PM +0200, Thomas Gleixner wrote:
>> ---
>>  Documentation/driver-api/vfio-mediated-device.rst |    4 +---
>>  arch/arm/boot/bootp/bootp.lds                     |    5 +----
>>  include/linux/input/elan-i2c-ids.h                |    5 +----
>>  3 files changed, 3 insertions(+), 11 deletions(-)
>
> I understand the goal to split this up per "rule", but that rule name
> makes no sense to any kernel developer.  They don't know what it is, or
> where it came from, or anything else like that.

I was just reusing the scripts/approach from 3 years ago :)

> This also touches files across subsystems, generally not a good idea.
> Is your goal to get acks from the people here and then split them up
> per-subsystem later, or are you thinking you want these merged as-is?

I assumed that we merge that through your spdx tree. Though it might be
not the worst idea to route them through the maintainers, so they become
more aware of the overall problem.

It's easy enough to split them fully automated after we got green light
from the folks on the SPDX list.

> Oh, and thanks for picking this work up again.  It's amazing to me that
> the companies/people that complain about this over the years never
> actually send patches to do anything about it...

What's more amazing is that we still have no plan what to do with the
more complicated ones - the non-standard disclaimers are just the tip of
the iceberg.

Thanks,

        tglx
