Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B033543CE7
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 21:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232291AbiFHTbT (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 15:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbiFHTbT (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 15:31:19 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1703C1E7372
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 12:31:18 -0700 (PDT)
Received: from localhost (unknown [216.161.86.18])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id 555288208F;
        Wed,  8 Jun 2022 12:31:17 -0700 (PDT)
Date:   Wed, 8 Jun 2022 12:29:10 -0700
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     Richard Fontana <rfontana@redhat.com>
Cc:     Allison Randal <allison@lohutok.net>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Message-ID: <YqD4hjCHlRsuzNOl@ebb.org>
References: <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx>
 <87y1y8xrzx.fsf@ebb.org>
 <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net>
 <YqCsfqgO07BITgfU@ebb.org>
 <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net>
 <YqDZyOh6zQPNN0AY@ebb.org>
 <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Wed, Jun 8, 2022 at 1:24 PM Bradley M. Kuhn <bkuhn@ebb.org> wrote:
> > Without this external file, how is anyone to know without digging through
> > Git logs *whether* a warranty disclaimer used to be there or not?  …
> > Part of the reason we're struggling with this is that SPDX *should have*
> > provided identifiers for the items that GPLv2 allows to vary in
> > presentation and terms of the licenses!
>
Richard Fontana replied later that day:
> This is an interesting point. SPDX identifiers were I think originally
> meant to refer to license texts, not license notices, except for the
> "or-later" vs. "only" issue found in the GPL family.

Thanks, Fontana, you've stated the problem clearly and succinctly.  IOW (if
I'm following you correctly), the fundamental issue here is that linux-spdx
project is using license *text* monikers to replace license *notices*, but
GPLv2 permits variance in license *notices* that *are* legally significant.
(And, GPLv2 compliance requires keeping such notices in tact.)

 * * *

Meanwhile, if you at Red Hat were (at least at one time) encouraging a
legally different warranty disclaimer notice for employees to use upstream …

> To be a little clearer about why this bothers me a little bit. I know that
> in the past the FSF gave public guidance to companies that it was okay to
> tack on materially different warranty and liability disclaimer language to
> GPL notices (or, say, in global product license agreements). (GPLv3
> codifies this in its section 7.) Also, earlier in my time at Red Hat I went
> through a period where I was recommending to developers to include some
> disclaimer language that differed from what you have in the traditional GPL
> boilerplate. The point is that there are cases where the materially
> different language is deliberate and reflected the legal preferences of the
> contributor (or contributor's employer) in question

… then, odds are, other companies did (or even still do) as well.

   -- bkuhn
