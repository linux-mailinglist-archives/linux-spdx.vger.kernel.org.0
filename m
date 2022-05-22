Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 681085304F6
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 19:36:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243053AbiEVRgA (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 13:36:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238490AbiEVRf7 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 13:35:59 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DFA33B0
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 10:35:58 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653240956;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Y4mKBwNpU2ecckKqTNPKSpuZbLCGPAc0z+OJuCeCVhM=;
        b=H68RKUra+435IDnBq3csEWx9qFsUKOqXZcmBon6KagTKkfoA808tMcN+9Pp7hbWJehNgTR
        fQASoVM/ySy4bflWxIZh4sIpQqP9k/y6wxsCSq04cjg8Di7CuJkm1rH2aQlgDWhLszoR4C
        UoQOgUgeTu+MHcQj9lRpUfSm4VwocMOom3vPnPbs7Mpx2zgiAjtgn2gl6xuqkdMX2NwHAq
        H0mwr3x1DdPlkTEzHyyUkmhrNBQ6a9UVTPsQnP8ehNTPp6SnRNm1ylXnwNza4BUnCB5SyF
        gLZ4LM8ejifhjc+ohBQbrFEb7yRR0BA5CXGRre/YkGsYvzN+Ql9A9piqgHROUA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653240956;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Y4mKBwNpU2ecckKqTNPKSpuZbLCGPAc0z+OJuCeCVhM=;
        b=bC1LZk1C/K6yeeKK+WuCYRpVOGEVQ4qNcczJPU4K7hGdVxaRz5LD661CV5IPJHuI6hukFH
        sHugnjlbcyZBCiCA==
To:     Allison Randal <allison@lohutok.net>, linux-spdx@vger.kernel.org
Subject: Re: SPDX in the kernel: State of the union
In-Reply-To: <bdbee107-aa2d-ce87-9c82-8be2f1fcb38d@lohutok.net>
References: <87zgjfka75.ffs@tglx>
 <9ea648b2-3430-bec8-c697-3017283e03b1@lohutok.net> <87y1ywi5b3.ffs@tglx>
 <bdbee107-aa2d-ce87-9c82-8be2f1fcb38d@lohutok.net>
Date:   Sun, 22 May 2022 19:35:56 +0200
Message-ID: <877d6dii6b.ffs@tglx>
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

On Sun, May 22 2022 at 11:17, Allison Randal wrote:
> On 5/20/22 11:37 AM, Thomas Gleixner wrote:
>> I've generated static HTML pages from the data, which are available
>> here:
>> 
>>    https://tglx.de/~tglx/spdx/index.html
>
> Makes sense, and a large number of them look like they'll be easy to
> review and approve.

I hope so.

>> Which size of batches and what rate do you folks prefer?
>
> Looking back to 2019, you generally sent batches of 10-25 patches per
> day, where each patch was one match rule. Seems reasonable to start
> again there, and tune up or down as needed.

Sounds like a plan.

Thanks,

        Thomas
