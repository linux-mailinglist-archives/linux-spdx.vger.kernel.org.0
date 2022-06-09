Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECAD55442C5
	for <lists+linux-spdx@lfdr.de>; Thu,  9 Jun 2022 06:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231516AbiFIEv6 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 9 Jun 2022 00:51:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiFIEv5 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 9 Jun 2022 00:51:57 -0400
Received: from mx1.supremebox.com (mx1-c1.supremebox.com [198.23.53.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F16765D7
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 21:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jilayne.com
        ; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=ZHUTRSG7u/PWVohz1T1vCUtuGmiD4le2dlL7w0T8inc=; b=WpS54S4Uj6cEtQQCpTKf8SeFig
        GYw7EhIu59Alo+c/CPOxuW/bzyRvgQL16jC8c+LAHtKFsdEp4nFy9VuhsPRxBiaER84Nfr0T7zeQT
        TtfGjF/cpXyQn4o0yZW93tfSnlWRO/NrZWGmBGf9KQtpydVE1YhxtZrk4iotzNsOc/1g=;
Received: from 71-211-138-118.hlrn.qwest.net ([71.211.138.118] helo=[192.168.0.91])
        by mx1.supremebox.com with esmtpa (Exim 4.92)
        (envelope-from <opensource@jilayne.com>)
        id 1nzA9C-0008Ct-Hg; Thu, 09 Jun 2022 04:51:54 +0000
Message-ID: <fb857d69-b5aa-03d5-e8b0-10d734cbbfe1@jilayne.com>
Date:   Wed, 8 Jun 2022 22:51:53 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Content-Language: en-US
To:     "Bradley M. Kuhn" <bkuhn@ebb.org>, linux-spdx@vger.kernel.org
References: <87bkv55yxh.ffs@tglx> <87y1y8xrzx.fsf@ebb.org>
 <87a6ao3wij.ffs@tglx> <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
 <YqCsfqgO07BITgfU@ebb.org> <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
 <YqDZyOh6zQPNN0AY@ebb.org>
 <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
 <YqD4hjCHlRsuzNOl@ebb.org> <02f4021f-63a5-4796-d790-2bacd37b90d2@jilayne.com>
 <YqE/aNK+YXH1Bs5n@ebb.org>
From:   J Lovejoy <opensource@jilayne.com>
In-Reply-To: <YqE/aNK+YXH1Bs5n@ebb.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Sender-Ident-agJab5osgicCis: opensource@jilayne.com
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org



On 6/8/22 6:31 PM, Bradley M. Kuhn wrote:
> J Lovejoy wrote today:
>>   a second question of: and then how does "capturing it in some way" get
>> practically implemented?)
>> We are NOT answering the second question at this point in time.
> Nor did I expect you to have an answer for that question this quickly!  (But,
> hopefully we agree it's a really important question!)
I agree it is something that deserves attention and careful thought, yes.
("really important" is relative and at this time of night, other things 
that have nothing to do with
licensing of software may be really important. like going to sleep! :)
>
> I think Fontana and I just for the first time stated clearly the root cause —
> namely: the inability for SPDX identifiers to capture non-standard
> disclaimers.  (I suspect this is something that no one noticed when this
> issue was debated previously [0].)
>
> Nevertheless, the flaw is big enough that it calls into question whether one
> *can* effectively use SPDX identifiers *alone* to mark licensing information
> for anything other than a brand-new project that has no license notices yet.
*sigh* I am well aware that you are not a fan of SPDX (nor me, 
probably), but let's please not over-state this.
SPDX identifiers are used, have been used, and will continue to be used 
effectively for many open source project
as a way to express the license in a source file. Whether you like it or 
not! :)

As for non-standard disclaimers in a license notice - this is not a huge 
problem as it seems you are making it.
Let me put some numbers to that:
- of the ~400 (I've lost track) licenses currently on the SPDX License 
List, only about 46 of them even have a
standard license notice (defined in the SPDX License List as, "text 
intended to be put in the header of source
files or other files as specified in the license or license appendix 
when specifically delineated")
- of those approx 46, about 30 have some form of disclaimer type 
language (I was being generous here)
- of those 30:
- - 9 of them are GNU licenses (GPL - all 3 versions, LGPL - 2 versions, 
AGPL, and GFDL - all 3 versions)
- - then there's Apache-2.0
- - and the rest are old (e.g. SISSL, CPAL), rarely used, and/or 
entity-specific licenses (APSL, W3C).
So that's really only 10 licenses that are in use.

I have not seen this be an issue with Apache-2.0 and I doubt it's so 
much an issue with GFDL, so we are really only talking about this 
potentially being an issue with GPL and LGPL.

So, here we are - I suppose the Linux kernel is the appropriate place to 
have it come up, given that!

>> #1 QUESTION: How much deviation from the language in the text of the
>> standard header for GPL rises to the level of being legally significant to
>> warrant capturing it in some way?
> If anyone but the copyright holder and/or original placer of the warranty
> disclaimer makes this determination, there is increased risk of McHardy-style
> lawsuit.  So, while I agree with your other point that it's a risk
> assessment, the stakes are presumably rather high here.
Whether this increases the risk or whether the stakes are considered 
high or not is all part of a risk assessment.
Assessing risk is not simply - could a bad thing happen, it's also looks 
at the likelihood of it happening and the impact, etc.

What would be helpful is if we (or I guess, really I) can try to ask 
lawyers versed in interpretation of these kinds of things and get some 
idea as to the scope of what changes we see here may or may not be 
likely to be consequential.
>
> OTOH, if everyone is cool with the idea of the Git repository being part of
> the CCS, I think that's a fine solution from my perspective.
That is answering the second question before we've answered the first. 
In any case, your position is heard on this part! ;)

Cheers,
Jilayne
