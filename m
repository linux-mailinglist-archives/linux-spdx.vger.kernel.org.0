Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19BD354254A
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 08:54:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354890AbiFHBSD (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 21:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1588379AbiFGXyg (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 19:54:36 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7318965A0
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 16:05:12 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654643109;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FAoCEyuMzSF2QjVbmuYWCuqCJAp+2Au+h1BpfbtN7zg=;
        b=3MldbUGKZ1HOUUmzJLv8qzUXy/HTvLNmQ0CeSS1Qvj0N9jpXQ9PJ6eGb0AgmNC7Op49IBa
        5meiL4pS/KHbOFIeQZ+Hzgrwo0BX7QztladZvri+CrxgGYnSegVwKo1Ra8EC/bBkDb8DcK
        QwVDnv8Tk9I60RBDRoYMOIEsHXDqY+Lo+hNSZdYPA53XfSl98C33wUe8QVB6QEDWl2moRt
        bYhqzvNcNW/3r29by65QTmlS+739h2ktCbWdfiZX+y/yXfVGwb6q9ARqwaP5LzkXY0BQxJ
        oy2Fy+3eAGF/0bEIehbCh6qiqRq6lDRfBtR6ZDmMtatp84ex4dh7W0ABNLiElQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654643109;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FAoCEyuMzSF2QjVbmuYWCuqCJAp+2Au+h1BpfbtN7zg=;
        b=+bNnvNpNF0GL8DZ01TjuuXFkpZAKFtwyLmcTTFVqS+nAFz2EFr8ODIe0IcC9ALATN4+feg
        mLJwOx3fsnXCBDCg==
To:     "Bradley M. Kuhn" <bkuhn@ebb.org>,
        Richard Fontana <rfontana@redhat.com>,
        Allison Randal <allison@lohutok.net>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
In-Reply-To: <87y1y8xrzx.fsf@ebb.org>
References: <20220606195512.584745712@linutronix.de>
 <CAC1cPGxhmK1tYJCoKxQ2ykQhZBtswye-stR_YdBAha7n082UCA@mail.gmail.com>
 <20190521210833.veltn74dcgic5zmw@ebb.org>
 <20190522133053.GE28920@kroah.com>
 <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net>
 <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx> <87y1y8xrzx.fsf@ebb.org>
Date:   Wed, 08 Jun 2022 01:05:08 +0200
Message-ID: <87a6ao3wij.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Bradley,

On Tue, Jun 07 2022 at 11:12, Bradley M. Kuhn wrote:
> Fontana started a linux-spdx thread on 2019-05-19 with the subject line of
> =E2=80=9CMeta-question on GPL compliance of this activity=E2=80=9D, sayin=
g:
>>> I was at the LLW event in Barcelona last month but unfortunately did not
>>> attend the workshop relating to this activity =E2=80=A6
>>> GPLv2 section 1 says: "=E2=80=A6 keep intact all the notices that refer=
 to this
>>> License and to the absence of any warranty; and give any other recipien=
ts
>>> of the Program a copy of this License along with the Program."=E2=80=A6=
=20
>
>>> I have recently heard the argument that replacing a more or less standa=
rd
>>> old-school GNU license notice =E2=80=A6 with an SPDX license identifier=
 string,
>>> without explicit permission from the copyright holder, complies with th=
is
>>> condition =E2=80=A6  However, more conservative interpreters of GPLv2, =
including
>>> some copyright holders, might argue otherwise.
>
>>> The discovery of GPL notices juxtaposed with warranty disclaimers
>>> imported from non-GPL licenses, or warranty disclaimers that otherwise =
go
>>> beyond what is called out in GPLv2 and the traditional GNU license
>>> notice, also raises the question of whether this list's work is strictly
>>> compliant with the quoted language from GPLv2 section 1.

What we have done so far is:

  1) Add SPDX license identifiers to files which have no license
     reference/notice/... at all

  2) Replace bog standard boilerplates

     Quite some of these replacements have been reviewed by Richard as
     documented in the changelogs and the mailing list archive.

     So far I haven't seen any complaint from more conservative
     interpreters or from copyrights holders which disagreed with that
     approach and requested any of those changes to be reverted.

     All I have seen so far is handwaving worryguts.

We did _not_ remove/replace any of the oddball GPLv2 plus magic
disclaimer parts or any other non-standard license boilerplate yet.

The fact that I resent some of those match patterns now does not change
that. The whole purpose of this exercise is to have enough eyeballs on
these patches to catch those cases, sort them out and decide how to deal
with them.

> On 2019-05-21, I replied summarizing the decision from the 2019-04 meetin=
g:
>> There was consensus at the meeting in Barcelona that moving all the noti=
ces
>> to a single file to live inside the Linux tree "somewhere" with entries
>> like:
>>    Filenames: a.c, b.c, c.c contained this notice:
>>             NOTICE
>>       which was replaced with SPDX_IDENTIFIER on DATE.
>> and that such was a fine and acceptable way to address even the most
>> disagreeable and litigious conservative interpreters, and that such was a
>> necessary step to avoid compliance infractions on this issue.
>
> Note that was a full consensus =E2=80=94 and it included the opinion of m=
any
> prominent FOSS lawyers (who were attending under the Chatham House Rule
> imposed on that meeting) =E2=80=94 that keeping the notices intact somewh=
ere in the
> tree (not just in the Git repository) was essential.

Note that the full consensus of all these prominent lawyers becomes only
useful when they agree on something pragmatic which is actually
resolving the situation. Having full consensus on unactionable solutions
is a pointless exercise.

There was also full consensus many years before 2019 that the licensing
situation has to be cleaned up along with the conclusion that this needs
to be done with the help of those companies and their respective lawyers
who inflicted the mess in the first place. This has been discussed and
concluded to death with no outcome.

I surely can count the number of lawyers who actually helped with this
effort on _one_ hand. The number of corporate developers who were
involved in cleaning this up is not impressive either.

I've got promised access to a full audited license database for the
kernel way before 2019 from the very same crowd attending the legal
workshop in Barcelona. That still has not materialized as of today.

What I've got are a couple of private mails from corporate lawyers
asking why the SPDX efforts have been stalled since summer 2019. When I
told them that I ran out of copious spare time they never answered back.
I'm pretty confident that some of those lawyers were part of the full
consensus you mentioned.

> Greg KH was the only objector to the solution, replying on 2019-05-22:
>>>> So that's just not going to be possible =E2=80=A6=20
>>>> Just use git history, we have it, why ignore it?

Greg was not the only objector. There was no need to repeat the obvious
and the resulting discussion clearly showed that.

> Given that linux-spdx now uses that approach (i.e., the Git history is the
> only place that these notices can be found), under GPLv2=C2=A71, it now m=
eans
> that all downstream redistributors of Linux must include the entire Git
> repository as part of the complete, corresponding source (CCS).  That see=
ms
> like it is actually more inconvenient to more people than writing the tool
> to generate the notice file (see below).

That's not a problem the Linux kernel introduced.

U-Boot did a wholesale SPDX conversion back in 2013 which removed every
boilerplate including non-standard disclaimers and obscure license
notices/references.

As a matter of fact, none of these changes in the U-Boot tree has been
reverted or challenged since 2013.

How is the industry dealing with that?

   1) Not having noticed within 9 years?

   2) Simply ignoring the problem?

   3) Shipping the git repository?

   4) Using the magic tool which nobody is willing to write?

Whatever the answer is, it's going to be very conclusive and I'm really
looking forward to it.

> In response to Greg's concerns, Thomas made this excellent suggestion:
>>>>> That's what tools are for. We can generate that list when generating =
the
>>>>> tarball..=20
> (=E2=80=A6 and Allison Randal endorsed this idea in on 2019-05-24)
>
> The thread continued on, with Greg raising concerns that putting the noti=
ces
> in the release tarball would still be difficult, and Thomas and Allison m=
ade
> a counter-proposal that the list of notices (as described above) could go=
 on
> a stable kernel.org URL for each release, and that just the URL is noted =
as
> the place to find full notices in the tarball itself.
>
> *But*, until (a) that tool exists to auto-generate the notices, and (b) t=
he
> tarballs contain that URL in them, the Git repository as a whole *is now
> required* as part of the CCS for Linux per GPLv2=C2=A71.

We all discussed options for solving this, but that does not mean that
the task to create such a tool has been assigned to anyone or that
anyone volunteered to take it on.

There was plenty of time for all involved parties, especially those who
are complaining most to sit down themself or pay someone to get it done.

> Fontana followed up later in the 2019 thread, (after work began) to say:
>>> I believe this group needs to address [this notice issue] head-on and
>>> openly, =E2=80=A6  The fact that I'm participating in these reviews sho=
uld not be
>>> taken to mean that I am 100% comfortable with this activity. Part of why
>>> I'm doing so is to identify problems that might otherwise get overlooke=
d.
>
> I'm glad Fontana is doing the latter, and that he brought up this issue
> again now.

What's the point? Richards objections were expected.

As I said above: This is the purpose of this list. I'm just providing
coarse filtered data to analyse. If problems are detected and pointed
out the changes are put aside and have to be dealt with seperately.

We've been very consistent with this since this effort started as can
be seen from the list archives and git history.

> As can be seen from the list archives and Git history, neither I
> nor anyone from Software Freedom Conservancy has signed-off any linux-spdx
> patches.  We can't in good conscience sign-off on patches that currently
> cause *more* GPLv2 violations (even if they are minor infractions).  This
> problem needs attention for linux-spdx to achieve its goals.

Duly noted.

Thanks,

        tglx
