Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3D6542B31
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 11:17:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232322AbiFHJPl (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 05:15:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234264AbiFHJNA (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 05:13:00 -0400
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F330D1E4BD8
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 01:34:01 -0700 (PDT)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id 9470112A613;
        Wed,  8 Jun 2022 04:33:59 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:cc:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=AOytfVxa7nFv
        7jgqyKBa8b5vmPCAL3vKL8teSSfz10A=; b=l7aa6i5jgI/rVxZ2fzSalYTHhajM
        xhlotC/upItkIhEeplbWsVHiPXzpJExuRn6tTp0QGke6eE+oAA4yeWV4OqDqze5Z
        ShWy5EB1niYLpsj5gkNzcwRgns40A/OUwRZ1kAvM3JyCejNTOEVWDGibfps5P7Gp
        82D41q/3udEHKoo=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp2.pobox.com (Postfix) with ESMTP id 8B5C912A612;
        Wed,  8 Jun 2022 04:33:59 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:cc:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=cHyB3cQ/qneI+bYIcBN03rc/GM69mF//UypQNMpeWP8=; b=P5MZDI1KoaMfAnU0C4m2bfKQkNbUzX4a09sMgoj7YeuOAjIWPgDWq7GnxVN2O7gRe+Sb9kxzkyC+hMSoleFfZ1STCLI8Zozk6SwZTLSvAeYrdx3WXn4A1b9Xm4ZdddBSl3XX+zaUGJzMgn4e+tqo5NA/M33FWS2MEp1nOKNFPTo=
Received: from [10.0.2.15] (unknown [217.9.63.39])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 6520B12A611;
        Wed,  8 Jun 2022 04:33:58 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
Date:   Wed, 8 Jun 2022 04:33:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>,
        "Bradley M. Kuhn" <bkuhn@ebb.org>,
        Richard Fontana <rfontana@redhat.com>
Cc:     linux-spdx@vger.kernel.org
References: <20220606195512.584745712@linutronix.de>
 <CAC1cPGxhmK1tYJCoKxQ2ykQhZBtswye-stR_YdBAha7n082UCA@mail.gmail.com>
 <20190521210833.veltn74dcgic5zmw@ebb.org> <20190522133053.GE28920@kroah.com>
 <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net>
 <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx> <87y1y8xrzx.fsf@ebb.org> <87a6ao3wij.ffs@tglx>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <87a6ao3wij.ffs@tglx>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Pobox-Relay-ID: BDEB2006-E705-11EC-A041-CB998F0A682E-44123303!pb-smtp2.pobox.com
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

On 6/7/22 19:05, Thomas Gleixner wrote:
> On Tue, Jun 07 2022 at 11:12, Bradley M. Kuhn wrote:
>>
>> Note that was a full consensus =E2=80=94 and it included the opinion o=
f many
>> prominent FOSS lawyers (who were attending under the Chatham House Rul=
e
>> imposed on that meeting) =E2=80=94 that keeping the notices intact som=
ewhere in the
>> tree (not just in the Git repository) was essential.
>=20
> Note that the full consensus of all these prominent lawyers becomes onl=
y
> useful when they agree on something pragmatic which is actually
> resolving the situation. Having full consensus on unactionable solution=
s
> is a pointless exercise.
>=20
> There was also full consensus many years before 2019 that the licensing
> situation has to be cleaned up along with the conclusion that this need=
s
> to be done with the help of those companies and their respective lawyer=
s
> who inflicted the mess in the first place. This has been discussed and
> concluded to death with no outcome.

My perspective here is shaped by my experiences with lawyers and=20
contributor agreements. In the early 2000s, as a leader of a free=20
software foundation, I was explicitly told by a number of lawyers that=20
unless we had a signed contributor agreement from every contributor, the=20
free software project had no right to distribute those contributions.=20
Part of a lawyer's job is to advise their clients based on their best=20
understanding of the law and common practice, and those lawyers were=20
doing exactly that, based on their experience in corporate law, so to a=20
certain extent I can't fault them for doing their job to the best of=20
their ability. But, while they were giving their best assessment of what=20
*could be* true at the time, what they weren't doing was thinking about=20
what *should be* true, in the context of free software. Both the law and=20
common practice evolve over time, and we need to be intelligent about=20
evaluating both what *could be* true at the moment, and what *should be*=20
true in the long term. The concepts of inbound=3Doutbound, DCO, and=20
signed-off-by are now common practice, but getting there required some=20
clever insight by some lawyers who really understoond free software, and=20
also consistent practice by projects over time.

With that context in mind: One reasonable interpretation of =E2=80=9Ckeep=
 intact=20
all the notices that refer to this License and to the absence of any=20
warranty=E2=80=9D could be to say that the exact text must be preserved, =
exactly=20
as it was typed at the dawn of time, including any typos, inaccurate=20
street addresses, etc. Another reasonable interpretation is that the=20
notices serve to link a license to the file, and declare that the legal=20
terms of the entire GPL license govern that file, and so what must be=20
preserved is the link. Current practice is closer to the second, people=20
feel free to throw in whatever garbled variant of the notice text FSF=20
recommends, because they know that what really matters is the text of=20
the GPL, which is invariant and has been carefully reviewed by lawyers.=20
We absolutely want to make sure that people don't strip off the link to=20
the GPL license, and use the file or its contents under terms other than=20
the GPL, that is the legal purpose we're trying to achieve.

For a new file, adding the FSF notice, or adding some garbled version=20
that still has the same terms as the GPL and FSF notice, or adding the=20
SPDX license identifier are all legally equivalent ways of declaring=20
that the file is subject to the terms of the GPL license. In terms of=20
common practice, the SPDX identifier is actually superior because it's=20
clear, consistent, machine readable, and limits the scope of garbled=20
variations introduced by humans. (Humans actually manage to garble even=20
those few characters of the SPDX identifier, but since it's machine=20
readable, it's also machine checkable, so easy to kick back an error and=20
say "that's not a valid SPDX identifier, did you mean X or Y?")

If the full text notice and SPDX identifier are legally equivalent, then=20
can they legally be substituted in an existing file? There is a=20
reasonable interpretation to say that *could be* allowed, but a more=20
important question here is whether that *should be* allowed. Allowing it=20
does no harm, the full terms of the GPL apply to the file with either=20
the full text notice or the SPDX identifier. Allowing it is good for the=20
cause of free software and for GPL enforcement, because it cleans up=20
confusing cruft from historical human inconsistencies, and clearly=20
declares the legal terms that apply to the file. So, I would argue that=20
substituting SPDX identifiers for text notices should be allowed (as=20
long as the text notice has the same terms as the GPL itself). While=20
substituting SPDX identifiers might not be common practice yet, the way=20
we make it common practice is by practicing it repeatedly until it=20
becomes common.

It's also worth noting that there's isn't any risk of a "point of no=20
return" here. When Thomas and I say that the changes are all in git=20
history, we aren't saying that we expect everyone to read the entire=20
history. What we're saying is that it's easy to write a tool to scan the=20
entire history, and generate a file that lists every file that had an=20
SPDX identifier substituted under every match rule, if we decide that's=20
actually necessary at some point. It really, really shouldn't be=20
necessary (any more than contributor agreements are necessary), but it's=20
reassuring to know have options.

Allison
