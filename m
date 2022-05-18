Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA91452BD31
	for <lists+linux-spdx@lfdr.de>; Wed, 18 May 2022 16:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238288AbiERNrs (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 18 May 2022 09:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238078AbiERNrs (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 18 May 2022 09:47:48 -0400
X-Greylist: delayed 326 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 18 May 2022 06:47:46 PDT
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 083401A6AF2
        for <linux-spdx@vger.kernel.org>; Wed, 18 May 2022 06:47:45 -0700 (PDT)
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 2BE6413CE79;
        Wed, 18 May 2022 09:42:16 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=Tf/g6DpMjQFT
        xPPhPjRFTGVWe/rvHhMGhSwzc5EgbeE=; b=O5MBuO75dsvUAK4m7LqXfyU47Z1g
        dGJDaqysRKXgrfe3XFMvNdS8362q2YPCAlj+7YAbiYIbEaB3jybleGV+fJ2OnOA5
        z6Gcci3RS5hhBpH9nfJ9KLcz51CBxiNHO0hryFmP30Niw1lnXgOhNPquI6jXCLot
        9hyfW2ZpmZc9UWo=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 2123413CE78;
        Wed, 18 May 2022 09:42:16 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=Tf/g6DpMjQFTxPPhPjRFTGVWe/rvHhMGhSwzc5EgbeE=; b=L6CBqGE6F+Oeop4YXrUfhRUVRsMcF+MG6rP62Va6JCufHZRwhlaz/RXh5xFWqCw9i44sqeuVrUTR1N0rp+r7TgvYW4DiMe6pM1CXPx6sX2Da7MdTHyvu5hnUzi4aI/sUuDYdd0cJkura6/dHv9JYIhAuZQnLttNu2+DjbCh2B/o=
Received: from [10.0.0.38] (unknown [24.186.244.147])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 7C03A13CE77;
        Wed, 18 May 2022 09:42:15 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <9ea648b2-3430-bec8-c697-3017283e03b1@lohutok.net>
Date:   Wed, 18 May 2022 09:42:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: SPDX in the kernel: State of the union
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org
References: <87zgjfka75.ffs@tglx>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <87zgjfka75.ffs@tglx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 541F3942-D6B0-11EC-B65C-5E84C8D8090B-44123303!pb-smtp1.pobox.com
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 5/17/22 7:31 PM, Thomas Gleixner wrote:
> 
> Finally here is another round of important questions:
> 
>   #1 Is there still interest to get this done? The silence on this list
>      after the initial effort is deafening.

This list had 210 messages in 2021, and 64 so far in 2022, which may be
silence compared to LKML, but is reasonably respectable ongoing traffic
for a small cleanup project.

I'm still reviewing all patches as they flow through this list. I
haven't been actively marking them as reviewed-by me, but I would raise
any problems I saw, and I've seen others raising problems.

So, yes, there's still interest, and if you want to start generating
more patches, I'll happily contribute to the review process.

I actually thought you just ran out of easily scriptable fixes, but it's
nice to hear that there's still substantially more we can do with
scancode rules.

>   #2 Are there still enough interested and comptent people on this list to
>      handle the legal questions?

I think so, yes. If we've lost some of our reviewers, we can recruit new
ones.

With the auto-generated patches, you will probably need to rate-limit
like you did in 2019, since the tools can generate patches far more
rapidly than the humans can review them.

>   #3 Was there any progress on the outstanding questions on this list where
>      discussion dried out almost 3 years ago?

ISTR reaching conclusions on all the questions before, but if there are
some lingering, we can revive them. And, you raised good new questions too.

> I'm willing to pull the cart again, but if the interest and support stays
> around zero, I surely have other things to do.

If you have the time and energy to do another burst, go for it. I don't
know that we'll ever get to 100%, but every file we clean up is helpful,
so it's worth continuing.

Allison
