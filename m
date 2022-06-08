Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F20D1543A51
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 19:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232089AbiFHR1H (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 13:27:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232161AbiFHR0z (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 13:26:55 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A926240A12
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 10:24:38 -0700 (PDT)
Received: from localhost (unknown [216.161.86.18])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id C7743820C3;
        Wed,  8 Jun 2022 10:24:37 -0700 (PDT)
Date:   Wed, 8 Jun 2022 10:18:00 -0700
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     Allison Randal <allison@lohutok.net>,
        Richard Fontana <rfontana@redhat.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Message-ID: <YqDZyOh6zQPNN0AY@ebb.org>
References: <20190522133053.GE28920@kroah.com>
 <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net>
 <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx>
 <87y1y8xrzx.fsf@ebb.org>
 <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
 <YqCsfqgO07BITgfU@ebb.org>
 <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Allison Randal wrote:
> If an automatically generated file (outside of git) recording the historical
> full notice text for each changed file is as far as I can get the lawyers to
> agree at the moment, I accept that as good progress in the right direction.

Lawyers on this list have already raised concern (and even offense) about too
much “blame this on lawyers for wanting something unreasonable” — because
there was a lot of that on this thread back in 2019.  I want to be as fair as
possible to our lawyer colleagues.

Ultimately, lawyers don't deserve the blame for the problem linux-spdx seeks
to solve.  Lawyers advise clients and their clients make the call about how
to slap the GPL onto their work.  Some (even most) of the contributors
probably don't even consult lawyers before contributing.  Many ignore their
lawyers advice, too!

So, the problem we has is we really have no way of knowing for sure that
variance in (say) the warranty disclaimer was intentional or just goofy — and
if it was just goofy, did that goofiness end up being legally significant?
For all we know, minor changes were determined as very significant by some
contributor who has a lot of liability and fears a warranty claim.  Who are
we to judge — given that GPLv2 *does* allow you to vary your warranty
disclaimer (or remove it entirely)?

Using the example of the easily-solved pathological cases (e.g.,
misspellings, typos, Scrivener's errors) doesn't really help because Fontana
has already pointed out that there are examples that can't be explained away
as Scrivener's errors.

Since linux-spdx doesn't ask *every* contributor (I realize, some have been
asked), we don't really know (systematically) if having that notice there
was important to them.  One of the purposes of the GPL from its inception was
an advocacy component. (In fact, during GPLv3 drafting, one of the arguments
that some activists made against shortening the “How to Apply” section from
the version in GPLv2 was that shorter notices would mean less advocacy. I
didn't agree with that argument myself (I argued for shortening/removing “How
to Apply”), but given that some make that argument, we have to at least
consider that there *are* contributors who feel that way.)

Furthermore, one of the impetuses for linux-spdx *was* behavior by folks like
Patrick McHardy's (his bad actions now in the past, of course).  linux-spdx
was, in part, a response to fear that there would be more contributors who
would seek to monetize their Linux copyrights through inappropriately
captious enforcement.  Well, removing notices without a clear plan and
mitigation strategy to handle the “keep intact all the notices that refer to
this License and to the absence of any warranty” perfectly “sets up” a
captious and annoying copyright claim.  Why would linux-spdx want to do that
— on purpose? 😲

Which, BTW, leads to another key point: SPDX identifiers do *not* indicate
whether a standard warranty claim, or no warranty claim, or anything else was
present.  Without this external file, how is anyone to know without digging
through Git logs *whether* a warranty disclaimer used to be there or not?  I
hadn't thought about this before, but this is actually a huge bug in SPDX.
Part of the reason we're struggling with this is that SPDX *should have*
provided identifiers for the items that GPLv2 allows to vary in presentation
and terms of the licenses!

> I'm making an explicit point that the exact text of the notice isn't
> actually all that useful. Those aren't red herrings, they're just specific
> examples where the exact text is actively unhelpful. To the extent that the
> exact text of the notice is a jumbled but equivalent paraphrase of the
> terms of the GPL it isn't actively unhelpful, but it also doesn't add any
> legal or informational value, does add confusion around the licensing,

I don't think anyone has disagreed that *some* of the notices have variance
that is unhelpful and may in fact be legally insignificant.  One problem is:
is linux-spdx (collectively) really qualified to make that call on behalf of
all contributors?

Second problem is: Fontana revived this 2019 thread specifically because
we're now talking about examples where the notices vary and *do* seem legally
different in the warranty disclaimer department, at least to Fontana.

> Where the exact text of the notice does deviate from the terms of the GPL,
> that's a different problem, and we aren't changing those files for now.

I realize that as of, like, "now" as in "the last 24 hours", that's true,
because Thomas indicated that he updated/is-updating his patch set to exclude
the ones Fontana identified (IIUC).  But I have two concerns: (a) Thomas
already indicated that tabling this issue in 2019 led to slow down on the
project, and I presume it will do so again if it's tabled again and (b) the
number of lawyers reviewing these patches is minimal, and they're also human
beings and they may miss stuff (and/or may disagree about the legal
significance).  As such, I think there are already no certainty that some
items that the patch-reviewers believed were legally insignificant are
actually legally significant.

It also leads me to ask Fontana, since he seems to be the only lawyer
watching this issue: are you *sure* there weren't other patches that drifted
through already that had legally-significant variance in warranty disclaimer?

 * * *

Anyway, it's good we're having this conversation because it's the precise
conversation that was had under CHR in the “room where it happened” in April
2019.  The outcome of that conversation is what led to complete in-the-room
consensus that the easiest thing was just to make a simple file that had
every variation of notices and where they previously appeared.  The next
month, when it was discussed this on the list, the conversation did not
include as many diverse participants and the conclusion was reversed with a
“table all the notice worries and full steam ahead!”

I was frankly surprised that such important decisions were being made
under CHR and without a plan to report them back to the Linux community
(ISTR I even pointed this out at the time), so it's good that we have
a broad, public discussion about the topic here.

> Publishing a legal text like the GPL doesn't make it true either. At some
> point we put a legal stake in the ground on what *should be* true for free
> software, and then take action over time to defend and prove it to be true.
> That's how the law works and evolves over time.

Obviously I have a lot of views on this subject, but a lot of what you raise
in your email about “how do we move the thinking about what is legally
necessary/advisable in FOSS” really is beyond the scope of the narrow problem
that linux-spdx was chartered for, so let's have the "how do we evolve the
legal mechanisms of FOSS" discussion in another forum.

  -- bkuhn
