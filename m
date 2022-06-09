Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5057545026
	for <lists+linux-spdx@lfdr.de>; Thu,  9 Jun 2022 17:07:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245423AbiFIPHT (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 9 Jun 2022 11:07:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343592AbiFIPHS (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 9 Jun 2022 11:07:18 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F8633AB1CF
        for <linux-spdx@vger.kernel.org>; Thu,  9 Jun 2022 08:07:12 -0700 (PDT)
Received: from localhost (unknown [216.161.86.18])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id BFFB68208E;
        Thu,  9 Jun 2022 08:07:11 -0700 (PDT)
Date:   Thu, 9 Jun 2022 08:03:02 -0700
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Message-ID: <YqILppVZUrD19M6D@ebb.org>
References: <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
 <YqCsfqgO07BITgfU@ebb.org>
 <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
 <YqDZyOh6zQPNN0AY@ebb.org>
 <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
 <YqD4hjCHlRsuzNOl@ebb.org>
 <02f4021f-63a5-4796-d790-2bacd37b90d2@jilayne.com>
 <YqE/aNK+YXH1Bs5n@ebb.org>
 <fb857d69-b5aa-03d5-e8b0-10d734cbbfe1@jilayne.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fb857d69-b5aa-03d5-e8b0-10d734cbbfe1@jilayne.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Jilayne, thanks for your response!

I'd written last night:
> > Nevertheless, the flaw is big enough that it calls into question whether
> > one *can* effectively use SPDX identifiers *alone* to mark licensing
> > information for anything other than a brand-new project that has no
> > license notices yet.

J Lovejoy replied:
> SPDX identifiers are used, have been used, and will continue to be used
> effectively for many open source project as a way to express the license in
> a source file. Whether you like it or not! :)

I am actually neutral on that part of the issue.  My goal here is to make
sure licensors' rights and choices are respected.  What Fontana and I are
mainly pointing out is that replacing license notices with SPDX identifiers
has surprising consequences that we've just realized.  For example, in this
project, it leads to the Git repository as a whole needing to be part of
the CCS under GPLv2.  That outcome is not necessarily bad — it's just an
implication of linux-spdx that will surprise most redistributors.

> As for non-standard disclaimers in a license notice - this is not a huge
> problem as it seems you are making it.

It's not a numbers issue; once there is *one* of those notices that varies,
it needs to be handled somehow.

Also, does SPDX have some clear documentation that the intention is that the
SPDX identifier means not just the license text, but *also* the standard
notice as recommended by the license steward?  Maybe that documentation
should be included/linked to somewhere in the Linux tree so that folks know
that?

(While I'm no longer an active SPDX contributor, I'm pretty well versed in
SPDX (more than the average FOSS person for sure), and I didn't know that,
so I suspect it's not well known.)

> Let me put some numbers to that:
> - of the ~400 (I've lost track) licenses currently on the SPDX License List,
> only about 46 of them even have a
…
> - - 9 of them are GNU licenses (GPL - all 3 versions, LGPL - 2 versions,
> AGPL, and GFDL - all 3 versions)

Your set of numbers seem mainly an argument of: “copyleft licenses are often
more complex than non-copyleft ones”.  Anyway, since, as you say, Linux's
overarching license is “GPL-2.0-only” (full stop — with no additional
permissions), the key issue for this project is that GPL-2.0-only *does*
allow variable warranty disclaimers and/or notice terms.

> So, here we are - I suppose the Linux kernel is the appropriate place to
> have it come up, given that!

I agree.  But it will come up in any project licensed under a GPL Agreement.

> What would be helpful is if we (or I guess, really I) can try to ask
> lawyers versed in interpretation of these kinds of things and get some idea
> as to the scope of what changes we see here may or may not be likely to be
> consequential.

That's a useful data point to be sure, but what matters most is that
representatives of the licensors / copyright holders consent to modifying
their license notices and/or agree to switch to the standard one.

Fontana has already said that if we find a Red Hat copyright with a
non-standard warranty notice, that it *was* likely intentional and is
meaningful (though I expect in retrospect, IBM's Red Hat would be willing to
relicense with a more standard warranty disclaimer).  For linux-spdx to
be successful, it seems, it will either (a) need to contact copyright
holders of non-standard license notices to change them, (b) keep
the file in the manner designed at the April 2019 meeting, or (c)
the Git repsoitory stays part of the CCS.

All of the solutions seem workable to me.  Bugs can be fixed. :)

  -- bkuhn
