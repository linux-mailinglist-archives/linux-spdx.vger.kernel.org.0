Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 424B2543233
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 16:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240799AbiFHOFL (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 10:05:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240953AbiFHOFK (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 10:05:10 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CAEEBA9A6
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 07:05:02 -0700 (PDT)
Received: from localhost (unknown [216.161.86.18])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id A0CD282088;
        Wed,  8 Jun 2022 07:05:01 -0700 (PDT)
Date:   Wed, 8 Jun 2022 07:04:46 -0700
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     Allison Randal <allison@lohutok.net>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Richard Fontana <rfontana@redhat.com>,
        linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Message-ID: <YqCsfqgO07BITgfU@ebb.org>
References: <CAC1cPGxhmK1tYJCoKxQ2ykQhZBtswye-stR_YdBAha7n082UCA@mail.gmail.com>
 <20190521210833.veltn74dcgic5zmw@ebb.org>
 <20190522133053.GE28920@kroah.com>
 <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net>
 <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx>
 <87y1y8xrzx.fsf@ebb.org>
 <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Thomas Gleixner wrote:
> What I've got are a couple of private mails from corporate lawyers asking
> why the SPDX efforts have been stalled since summer 2019. When I told them
> that I ran out of copious spare time they never answered back.

Obviously they should fund the tool to make the proper notice file.  If you
want to introduce me and Fontana to the corporate lawyers asking why
linux-spdx is stalled, while I can't speak for Fontana, I think he'd be glad
to join me in talking to them about what needs to be funded to make the
replacement legally acceptable.

> I'm pretty confident that some of those lawyers were part of the full
> consensus you mentioned.

Note that it wasn't just lawyers at that meeting, and also, many of the
people there represented well-funded pro-SPDX budgets.

(As a side note, this is a good example of why CHR-governed meetings are a
bad place to make decisions.  It removes all accountability from those who
had input into the decision.)

> U-Boot did a wholesale SPDX conversion back in 2013 which removed every
> boilerplate including non-standard disclaimers and obscure license
> notices/references.

Another project making a questionable decision doesn't provide useful
evidence for Linux to make the same questionable decision.

> How is the industry dealing with that?
>    1) Not having noticed within 9 years?
>    2) Simply ignoring the problem?
>    3) Shipping the git repository?

When a compliance matter comes up — and it will — demanding (3) will be the
outcome.  I suspect the U-Boot project is probably ok with that.

> We all discussed options for solving this, but that does not mean that the
> task to create such a tool has been assigned to anyone or that anyone
> volunteered to take it on.

I understand.  The lawyers (and their wealthy allies) who want SPDX
identifiers in every file *should* be funding the tool that's needed for GPL
compliance (lest they face a situation where the Git repositories become part
of the CCS — but *maybe* they actually want that?).  Meanwhile, it's
definitely ironic that an effort like this (to ostensibly make license
compliance easier) is introducing license violations.

Allison Randal also replied:
>> With that context in mind: One reasonable interpretation of “keep intact
>> all the notices that refer to this License and to the absence of any
>> warranty” could be to say that the exact text must be preserved, exactly
>> as it was typed at the dawn of time, including any typos, inaccurate
>> street addresses, etc.

Just to be clear: the concerns Fontana raised weren't about preserving typos
or inaccurate street addresses.  Thus, I think that point is probably a red
herring here.  No one has said that preserving typos or inaccurate postal
addresses is important.

>> Another reasonable interpretation is that the notices serve to link a
>> license to the file, and declare that the legal terms of the entire GPL
>> license govern that file, and so what must be preserved is the link.

I think a link to the proper notice (as it originally appeared) was a good
proposal back in 2019 and just as good now.  We had consensus that it was a
way to go.  It was your idea, Allison, and I think it was useful and solves
the problem.

>> Current practice is closer to the second, people feel free to throw in
>> whatever garbled variant of the notice text FSF recommends,

If folks have changed the warranty disclaimer in a legally significant way —
which Fontana already noted is happening here — then it absolutely matters.

>> If the full text notice and SPDX identifier are legally equivalent, then
>> can they legally be substituted in an existing file?

I realize that many people *want* the "if" part of that statement to be true.
No one actually knows if it is true.  The fact that the SPDX project (which
has an obvious self-promotional interest here), declared it to be true
doesn't make it true, either.

>> When Thomas and I say that the changes are all in git history, we aren't
>> saying that we expect everyone to read the entire history. What we're
>> saying is that it's easy to write a tool to scan the entire history,

This part does concern me.  Are these patches going upstream in a way that
they can easily be found?  Is it easy to extract the specific notice that was
removed programatically?  At the very least, linux-spdx should make sure
that's true.

In the meantime, there is no actual harm, from my point of view, that the Git
repository is now part of the CCS for Linux.  In some ways, that's an upside
outcome from *my* perspective.   But, I realize that company's legal
departments might not fully understand that's a side-effect of the current
effort.

Indeed, I think *many* people will find that a surprising outcome, and it
will lead to more (infractional) violations.

  -- bkuhn
