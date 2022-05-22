Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 001F253051B
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 20:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235686AbiEVSNO (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 14:13:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234665AbiEVSNO (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 14:13:14 -0400
Received: from galois.linutronix.de (unknown [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9038139B9E
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:13:12 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653243176;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=QqS5obm1DH0NxY/AXQctm+WAxZ3F7EdCQ0bS/Gx/X0k=;
        b=vIpa4Yw7UaA3P4nQX3E4KVWAQNraOW7gH3JKtDYXYarzZ/fdt4vIt0xMXnGn34KuWL+r09
        Ic2uDaZHogXBDkPYjqHTQ7+D7fYqVMenlfvzrhRPvhyEIlHaKLdNelXAMK+n8Hb1qu/G97
        ffRyOG60vk2lHa+c7LX7lVqaH/gL9Ck3ByYS2ASuGjO0urV53LMMilV997W2rHStjHWmI2
        dTAlsZ+GFrooiZg5NI2X/QTfn4XkJn8W0ePJKVQSjP77wB/cBYWVMyqInSvQNvwYx5xIMm
        XWHe6KvLbYwUeFlzKI8T5EMoWR6OetnsvwbPB6PWdXFdAA/SsUxpVjtG6p+QIw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653243176;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=QqS5obm1DH0NxY/AXQctm+WAxZ3F7EdCQ0bS/Gx/X0k=;
        b=A19ml06A0PxmDRfnyIIMfBsVQn/TrnJ5dU8Q0pAClOrcjlK+xAnRZTCOs8IA/y0Tya5Sb5
        MBZU5TU84/sGGbBg==
To:     Richard Fontana <rfontana@redhat.com>
Cc:     linux-spdx@vger.kernel.org, Mike Snitzer <snitzer@redhat.com>,
        Jonathan Brassow <jbrassow@redhat.com>
Subject: Re: treewide: License cleanup - RedHat originated
In-Reply-To: <CAC1cPGz4CVCqb7P72sWjJ5S6s6HcxzqiwuykwGFswkovOuALHA@mail.gmail.com>
References: <165322121770.3770149.18166071018834854082.tglx@xen13>
 <CAC1cPGz4CVCqb7P72sWjJ5S6s6HcxzqiwuykwGFswkovOuALHA@mail.gmail.com>
Date:   Sun, 22 May 2022 20:12:55 +0200
Message-ID: <874k1higgo.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,RDNS_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Richard!

On Sun, May 22 2022 at 13:33, Richard Fontana wrote:
> On Sun, May 22, 2022 at 10:55 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> I assume you're selecting files that have some sort of Red Hat or
> Sistina copyright notice. Just as a disclaimer, I can't speak to
> copyrights in these files that may be held by other organizations or
> individuals (and I can't say definitively whether any file bearing a
> Red Hat or Sistina copyright notice has or retains any copyright owned
> by Red Hat). With that said:
>
>> 1) this file is released under the gpl
>
> I am fine with saying that any Red Hat copyrights (including any
> Sistina copyrights acquired by Red Hat) in these can be represented
> with SPDX-License-Identifier: GPL-2.0.
>
> I would note that the following files did not seem to have any Red Hat
> or Sistina copyright notices:
>
>>    drivers/md/dm-log-writes.c
>>    drivers/md/dm-ps-queue-length.c
>>    drivers/md/dm-ps-service-time.c
>>    drivers/md/dm-unstripe.c
>>    drivers/md/dm-zero.c

Oops, yes. They are clearly flagged as not Red Hat.

>> 2) this file is released under the lgpl
>>
>>    drivers/md/dm-core.h
>>    drivers/md/dm-log-userspace-base.c
>>    drivers/md/dm-log-userspace-transfer.c
>>    drivers/md/dm-log-userspace-transfer.h
>>    drivers/md/dm-log.c
>>    drivers/md/dm-rq.h
>>    drivers/md/dm.h
>>    include/linux/device-mapper.h
>>    include/linux/dm-dirty-log.h
>
> For these, if the question is just about what version of the LGPL we
> should treat these as, I'd be fine with representing them as
> SDPX-License-Identifier: LGPL-2.1.
>
> However, and I realize this may go beyond my 'remit' as someone
> consulted for linux-spdx stuff or open some additional bag of worms,
> I'm wondering if these would be better off just relicensed under
> GPLv2, and thus represented as SPDX-License-Identifier: GPL-2.0. Even
> treating this code as having been LGPLv2.x-licensed, this would be
> authorized or at any rate contemplated by the largely-overlooked
> LGPLv2.0/LGPLv2.1 section 3. Suggesting this because it would seem to
> help marginally with some of the goals of this initiative and also
> because it's not obvious to me why LGPL would have been preferred over
> GPLv2 for these files to begin with, assuming they weren't copied from
> some unrelated LGPL-licensed project. I've cc'd Jonathan Brassow and
> Mike Snitzer in case they have any thoughts on this.

Let's see :)

Thanks,

        Thomas
