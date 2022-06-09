Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9EB3544098
	for <lists+linux-spdx@lfdr.de>; Thu,  9 Jun 2022 02:32:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiFIAcd (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 20:32:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230486AbiFIAcc (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 20:32:32 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0221D31E
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 17:32:30 -0700 (PDT)
Received: from localhost (unknown [216.161.86.18])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id 467988208F;
        Wed,  8 Jun 2022 17:32:30 -0700 (PDT)
Date:   Wed, 8 Jun 2022 17:31:36 -0700
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Message-ID: <YqE/aNK+YXH1Bs5n@ebb.org>
References: <87bkv55yxh.ffs@tglx>
 <87y1y8xrzx.fsf@ebb.org>
 <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
 <YqCsfqgO07BITgfU@ebb.org>
 <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
 <YqDZyOh6zQPNN0AY@ebb.org>
 <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
 <YqD4hjCHlRsuzNOl@ebb.org>
 <02f4021f-63a5-4796-d790-2bacd37b90d2@jilayne.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <02f4021f-63a5-4796-d790-2bacd37b90d2@jilayne.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

J Lovejoy wrote today:
>  a second question of: and then how does "capturing it in some way" get
> practically implemented?)

> We are NOT answering the second question at this point in time.

Nor did I expect you to have an answer for that question this quickly!  (But,
hopefully we agree it's a really important question!)

I think Fontana and I just for the first time stated clearly the root cause —
namely: the inability for SPDX identifiers to capture non-standard
disclaimers.  (I suspect this is something that no one noticed when this
issue was debated previously [0].)

Nevertheless, the flaw is big enough that it calls into question whether one
*can* effectively use SPDX identifiers *alone* to mark licensing information
for anything other than a brand-new project that has no license notices yet.

> SPDX makes clear that if there is a standard license notice (which GPL is one
> of the few license that has one), then the matching guidelines apply there too.
> That is not really helpful here, though, where we are talking about
> non-standard license notices.

Indeed — not only that, but if, as you say, the presentation of an SPDX
identifier at the top of a copyrighted work always means “the license with
its standard and recommended permission notice as recommended by the license
steward”, then *any* replacement of a notice that deviates in any way (even
trivially) from the standard is pretty clearly an infraction of the “keep
notices in tact” requirement of GPLv2§1.

> #1 QUESTION: How much deviation from the language in the text of the
> standard header for GPL rises to the level of being legally significant to
> warrant capturing it in some way?

If anyone but the copyright holder and/or original placer of the warranty
disclaimer makes this determination, there is increased risk of McHardy-style
lawsuit.  So, while I agree with your other point that it's a risk
assessment, the stakes are presumably rather high here.

OTOH, if everyone is cool with the idea of the Git repository being part of
the CCS, I think that's a fine solution from my perspective.

   -- bkuhn

[0] Historically, as John Sullivan pointed out in the 2019 thread on this
    list, the SPDX project (from its inception until recently) discouraged
    replacing license notices with SPDX identifiers.  (As some on this list
    know, the SPDX project changed its position to be silent on that topic
    recently.)  Here's the context from this list on that:

    John Sullivan <johns@fsf.org> wrote on Wed, 22 May 2019:
    >> On https://spdx.org/ids-how it currently says:

    [ Which can be confirmed with
      https://web.archive.org/web/20191019153514/https://spdx.org/ids-how ]

    >>>>  [W]hen a file already contains a standard header or other license
    >>>>  notice, the SPDX project recommends that those existing notices
    >>>>  *should not* be removed. The SPDX ID is recommended to be used to
    >>>>  supplement, not replace, existing notices in files. …
    >>>>  [E]xisting license texts and notices should be retained, not
    >>>>  replaced ‐ especially a third party's license notices.

    That text has since been removed from the URL in question.  IIUC SPDX has
    no recommendation on how to solve the problem we have at hand, which is
    certainly consistent with their position, since SPDX now officially stays
    neutral on the question of whether one should or should not replace
    existing license notices with merely SPDX identifiers.
