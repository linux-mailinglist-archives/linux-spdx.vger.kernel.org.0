Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C4A543617
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 17:10:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241582AbiFHPKW (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 11:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243237AbiFHPKN (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 11:10:13 -0400
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BDB344EC7C
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 07:59:30 -0700 (PDT)
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id E57CB13E2B2;
        Wed,  8 Jun 2022 10:59:29 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:cc:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=PaZ1sJmildKU
        xY7/sUaUzKAFfs5OHUZxZZMcTc768yg=; b=nHWiXbXVgVj2HHk+xRx2EStZ8Nmp
        OfQqNxs6umxf1v//s2ZtWnxhl3bzzlqMP+/S+MO+zFHHcX7TO4Uxbayil08SjCEY
        Y9mBijKhSjoqiIk6XniHMZAB7TNKZLZzCiLlgiuQKjd/g384DpkFCy2GkKrIFAgx
        1eB3P4ZZGc8UTXo=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id DC8A613E2B1;
        Wed,  8 Jun 2022 10:59:29 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:cc:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=b69CgFM56U+Sf94uswQYXPB+1A3vcow8c8AxAVnOiJI=; b=HL17fA5CtUNh9ylzawInxKqs6qSgJhPVzXhaS7zwPrZasuIDb5vTc+Vj97ZeKef+KyAc9uX8W0Rf7TWfVuWymA6K0XZb2YhNJwO4U2AJrGTDrgzn1Rqhze3xN1wffPOYQnazWBwqaxmfTQARWwG6U2WaRpvdxTHqJc86HaB2Hw0=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id E9F7113E2B0;
        Wed,  8 Jun 2022 10:59:28 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
Date:   Wed, 8 Jun 2022 10:59:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Content-Language: en-US
To:     "Bradley M. Kuhn" <bkuhn@ebb.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Richard Fontana <rfontana@redhat.com>,
        linux-spdx@vger.kernel.org
References: <CAC1cPGxhmK1tYJCoKxQ2ykQhZBtswye-stR_YdBAha7n082UCA@mail.gmail.com>
 <20190521210833.veltn74dcgic5zmw@ebb.org> <20190522133053.GE28920@kroah.com>
 <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net>
 <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx> <87y1y8xrzx.fsf@ebb.org> <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net> <YqCsfqgO07BITgfU@ebb.org>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <YqCsfqgO07BITgfU@ebb.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Pobox-Relay-ID: 98C2CC44-E73B-11EC-B9CE-5E84C8D8090B-44123303!pb-smtp1.pobox.com
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 6/8/22 10:04, Bradley M. Kuhn wrote:
> Allison Randal also replied:
>>> With that context in mind: One reasonable interpretation of =E2=80=9C=
keep intact
>>> all the notices that refer to this License and to the absence of any
>>> warranty=E2=80=9D could be to say that the exact text must be preserv=
ed, exactly
>>> as it was typed at the dawn of time, including any typos, inaccurate
>>> street addresses, etc.
>=20
> Just to be clear: the concerns Fontana raised weren't about preserving =
typos
> or inaccurate street addresses.  Thus, I think that point is probably a=
 red
> herring here.  No one has said that preserving typos or inaccurate post=
al
> addresses is important.

I'm making an explicit point that the exact text of the notice isn't=20
actually all that useful. Those aren't red herrings, they're just=20
specific examples where the exact text is actively unhelpful. To the=20
extent that the exact text of the notice is a jumbled but equivalent=20
paraphrase of the terms of the GPL it isn't actively unhelpful, but it=20
also doesn't add any legal or informational value, does add confusion=20
around the licensing, and means that every individual who encounters the=20
file has to carefully check to make sure that the text doesn't deviate=20
from the terms of the GPL. (Many of those people don't know the GPL as=20
well as Fontanta, and won't actually make that judgement accurately.)

Where the exact text of the notice does deviate from the terms of the=20
GPL, that's a different problem, and we aren't changing those files for n=
ow.

>>> Another reasonable interpretation is that the notices serve to link a
>>> license to the file, and declare that the legal terms of the entire G=
PL
>>> license govern that file, and so what must be preserved is the link.
>=20
> I think a link to the proper notice (as it originally appeared) was a g=
ood
> proposal back in 2019 and just as good now.  We had consensus that it w=
as a
> way to go.  It was your idea, Allison, and I think it was useful and so=
lves
> the problem.

As you probably know, I've been negotiating compromises with lawyers=20
around free software for decades, and I'm very good at it. That doesn't=20
necessarily mean I believe the compromise is the best answer, only that=20
it's the best I'm able to achieve at the time. Progress takes time, and=20
I accept that. (I've negotiated a series of compromises with lawyers=20
around contributor agreements over the decades down from "every=20
contributor", to "only the most significant/prolific contributors", to=20
"only corporate contributors", to "actually DCO and signed-off-by is fine=
".)

If an automatically generated file (outside of git) recording the=20
historical full notice text for each changed file is as far as I can get=20
the lawyers to agree at the moment, I accept that as good progress in=20
the right direction.

But, in the long term, I predict that common legal practice will evolve=20
to recognize that SPDX identifiers are legally equivalent to full text=20
notices (as long as those full text notices don't deviate from the terms=20
of the license). You can actively work toward that future or actively=20
work against it, it really doesn't matter to me. Time will tell, and no=20
one person will make that decision, it will be made for us by the=20
collective actions of a massive number of people.

>>> If the full text notice and SPDX identifier are legally equivalent, t=
hen
>>> can they legally be substituted in an existing file?
>=20
> I realize that many people *want* the "if" part of that statement to be=
 true.
> No one actually knows if it is true.  The fact that the SPDX project (w=
hich
> has an obvious self-promotional interest here), declared it to be true
> doesn't make it true, either.

Publishing a legal text like the GPL doesn't make it true either. At=20
some point we put a legal stake in the ground on what *should be* true=20
for free software, and then take action over time to defend and prove it=20
to be true. That's how the law works and evolves over time.

>>> When Thomas and I say that the changes are all in git history, we are=
n't
>>> saying that we expect everyone to read the entire history. What we're
>>> saying is that it's easy to write a tool to scan the entire history,
>=20
> This part does concern me.  Are these patches going upstream in a way t=
hat
> they can easily be found?  Is it easy to extract the specific notice th=
at was
> removed programatically?  At the very least, linux-spdx should make sur=
e
> that's true.

Scan all historical commits since we started this clean up project for=20
the ones that add SPDX identifiers (that's an easy machine pattern to=20
match), and check if those patches also deleted any lines. Thomas has=20
also been good about noting the exact rule that was applied in the=20
commit message, so that gives us even more metadata for the generated=20
output of the tool.

Allison
