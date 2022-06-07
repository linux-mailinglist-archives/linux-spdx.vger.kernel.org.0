Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17504541136
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 21:34:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355667AbiFGTe0 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-spdx@lfdr.de>); Tue, 7 Jun 2022 15:34:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355684AbiFGTdS (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 15:33:18 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 603DB1AA3C6
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:13:02 -0700 (PDT)
Received: from localhost (unknown [216.161.86.19])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id A196382122;
        Tue,  7 Jun 2022 11:12:56 -0700 (PDT)
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Richard Fontana <rfontana@redhat.com>,
        Allison Randal <allison@lohutok.net>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2 boilerplate/reference with SPDX - gpl-2.0_208.RULE
References: <20220606195512.584745712@linutronix.de> <CAC1cPGxhmK1tYJCoKxQ2ykQhZBtswye-stR_YdBAha7n082UCA@mail.gmail.com> <20190521210833.veltn74dcgic5zmw@ebb.org> <20190522133053.GE28920@kroah.com> <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net> <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com> <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com> <87bkv55yxh.ffs@tglx>
Face:   iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAMAAAClLOS0AAAABGdBTUEAALGPC/xhBQAAABVQ
 TFRFAAAAWjotvpiH/PHt27Sj7sq8lXFeBchlBgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsT
 AQCanBgAAAAHdElNRQfiCx4VFw6omMmeAAACAklEQVQ4y43UPZPbIBAGYGdu0puzQ51bI+qMdXId
 r0F1RoLrwfb+/5+QF307VVR4PDxiF14h7Xa7t3q8LJGjavj7a1euCYiZnaPnv9DF4FyMLKdXOPs4
 XM7KKzzKaF83gem+hUuF8QYUg7Fb4LEQAK1OG3hu4bbC3LpUC87+B9AMfQOg0yv0owEOK4x1+gnu
 M3yaV3jOMGxvKoXEKC9gAoabJtZYlXO8wJcb1hMHQClZgSj7cbzsY4a2vSqltIlz8nMpZnMkEmVw
 N4DtcYJo3AMPXFIMRMax/BjhOxZi2CpKKpWSZCd4C8aZ4CpzjR+Cint9WEp5H12IbbySEpHdaYVh
 OY9onf0Qq9//zDCFEW0MbFjUz7mHD1UdO4B3iErk9whdKdWVRuW5YLl5KnU2rjTBDyPmQImm5mec
 WQx7X3fBNwAzQ9kvBTKR0BwR3Bewhisn2mpkhea3BZwBcdorRlQk9QKecyZukRPeHTmuEL1FdjlJ
 tmTlvoAJPnRaMnKinNICn4QthNaKlNAlLae9sc5UODaelVh+l345u7ZMIY89GNdmWV8cIaTFlLGm
 QKLrzQykh/Aw02WsdoE2l1g7JIPdyWGFL6Hy1uJZsEjavLUXkVyeIdrbpPoXQHxDG0l68wEoW8vG
 BLI6qc2XoUEWCUI26aQfK1wypuwV7v6mtMhtgL8avOP/pBCiigAAAABJRU5ErkJggg==
Date:   Tue, 07 Jun 2022 11:12:18 -0700
In-Reply-To: <87bkv55yxh.ffs@tglx> (Thomas Gleixner's message of "Mon, 06 Jun
        2022 22:17:46 +0200")
Message-ID: <87y1y8xrzx.fsf@ebb.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Mon, Jun 06 2022 at 16:11, Richard Fontana wrote:
> > I forget how we dealt with things like this in the initial large batch
> > some years ago but I remember raising the concern that some bespoke
> > license notices contained disclaimer language that was arguably
> > materially different in some way from what is found in GPLv2 itself.

Thomas Gleixner replied last night:
>>>> IIRC, there was no real conclusion aside of dealing with this later :)

A solution was found, and agreed to in Barcelona in April 2019, but then
wasn't implemented.  Then, you (Thomas) and Allison suggested a useful
alternative, but AFAIK that too was tabled.  That leaves most Linux
distributions out of compliance with GPLv2 in the meantime.  Details below:

 * * *

Fontana started a linux-spdx thread on 2019-05-19 with the subject line of
“Meta-question on GPL compliance of this activity”, saying:
>> I was at the LLW event in Barcelona last month but unfortunately did not
>> attend the workshop relating to this activity …
>> GPLv2 section 1 says: "… keep intact all the notices that refer to this
>> License and to the absence of any warranty; and give any other recipients
>> of the Program a copy of this License along with the Program."… 

>> I have recently heard the argument that replacing a more or less standard
>> old-school GNU license notice … with an SPDX license identifier string,
>> without explicit permission from the copyright holder, complies with this
>> condition …  However, more conservative interpreters of GPLv2, including
>> some copyright holders, might argue otherwise.

>> The discovery of GPL notices juxtaposed with warranty disclaimers
>> imported from non-GPL licenses, or warranty disclaimers that otherwise go
>> beyond what is called out in GPLv2 and the traditional GNU license
>> notice, also raises the question of whether this list's work is strictly
>> compliant with the quoted language from GPLv2 section 1.

On 2019-05-21, I replied summarizing the decision from the 2019-04 meeting:
> There was consensus at the meeting in Barcelona that moving all the notices
> to a single file to live inside the Linux tree "somewhere" with entries
> like:
>    Filenames: a.c, b.c, c.c contained this notice:
>             NOTICE
>       which was replaced with SPDX_IDENTIFIER on DATE.
> and that such was a fine and acceptable way to address even the most
> disagreeable and litigious conservative interpreters, and that such was a
> necessary step to avoid compliance infractions on this issue.

Note that was a full consensus — and it included the opinion of many
prominent FOSS lawyers (who were attending under the Chatham House Rule
imposed on that meeting) — that keeping the notices intact somewhere in the
tree (not just in the Git repository) was essential.

Greg KH was the only objector to the solution, replying on 2019-05-22:
>>> So that's just not going to be possible … 
>>> Just use git history, we have it, why ignore it?

Given that linux-spdx now uses that approach (i.e., the Git history is the
only place that these notices can be found), under GPLv2§1, it now means
that all downstream redistributors of Linux must include the entire Git
repository as part of the complete, corresponding source (CCS).  That seems
like it is actually more inconvenient to more people than writing the tool
to generate the notice file (see below).

In response to Greg's concerns, Thomas made this excellent suggestion:
>>>> That's what tools are for. We can generate that list when generating the
>>>> tarball.. 
(… and Allison Randal endorsed this idea in on 2019-05-24)

The thread continued on, with Greg raising concerns that putting the notices
in the release tarball would still be difficult, and Thomas and Allison made
a counter-proposal that the list of notices (as described above) could go on
a stable kernel.org URL for each release, and that just the URL is noted as
the place to find full notices in the tarball itself.

*But*, until (a) that tool exists to auto-generate the notices, and (b) the
tarballs contain that URL in them, the Git repository as a whole *is now
required* as part of the CCS for Linux per GPLv2§1.

Fontana followed up later in the 2019 thread, (after work began) to say:
>> I believe this group needs to address [this notice issue] head-on and
>> openly, …  The fact that I'm participating in these reviews should not be
>> taken to mean that I am 100% comfortable with this activity. Part of why
>> I'm doing so is to identify problems that might otherwise get overlooked.

I'm glad Fontana is doing the latter, and that he brought up this issue
again now.  As can be seen from the list archives and Git history, neither I
nor anyone from Software Freedom Conservancy has signed-off any linux-spdx
patches.  We can't in good conscience sign-off on patches that currently
cause *more* GPLv2 violations (even if they are minor infractions).  This
problem needs attention for linux-spdx to achieve its goals.


    -- bkuhn
