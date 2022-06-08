Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 981B4543BCB
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jun 2022 20:54:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbiFHSym (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 14:54:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbiFHSyl (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 14:54:41 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AD68E135CF1
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 11:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654714479;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=NnUqHML+cDyp50zkEqrXhPX25Fwd0jJqdUjsMSNwB4A=;
        b=O2mzLl8aw8b01bOjedIqc8zq6P5JYpfXzybkf3LwGLyUB6hvs7+hCAzr6t019ei0ICfEZE
        tbb+i6msCmcM8eprVmax8P/XSzl3WtSBko73iL/Vtm1pgwKzpoDPfK40ZzuelYGdKmkwDQ
        FPi2HM+E689XSAegnVi5d+MPA7xTa0M=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-357-KpirXA9WNXivkqveWRQY3g-1; Wed, 08 Jun 2022 14:54:38 -0400
X-MC-Unique: KpirXA9WNXivkqveWRQY3g-1
Received: by mail-qv1-f70.google.com with SMTP id r14-20020ad4576e000000b0046bbacd783bso3700620qvx.14
        for <linux-spdx@vger.kernel.org>; Wed, 08 Jun 2022 11:54:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NnUqHML+cDyp50zkEqrXhPX25Fwd0jJqdUjsMSNwB4A=;
        b=tDTFgTBEu/d07BNm4a5CnQg73GcwmHYuHAfaVuUZ1vV1LWjrTx/qt2cWwPqH2mavtK
         4QPMrMN6CfOE5LDW86m9Y03xp2KXMimZ0fxE0FR/gP8wJMMzhD85y/d3YkUCeqPq/xoR
         KeUELCpwaXtbdk7TsKV780bYk+564oFBV76HZXW/KcOsXCaMJn74/qR/erP5GY8Vryhg
         TRSelcdDmCD2DL5x1uM98CCO94KELc3WvSDbqzgJTuI8FpQE0pwaa0stRsc3sTN8/Vqm
         ziIIO927QnE9zmPUFEeZpcI+FZh2ebziek58yh1EgR62o5YsMwn6RMPvkbVhiiZzg5Vc
         uHnw==
X-Gm-Message-State: AOAM533f2oLM7a3HxHMVNuCRoulO0bPr7Jqn+C76MDHlEFMN0DgIBdw1
        IS8slFZlCP8gkwSV2LTqy7jemo0YzIcTFLc3ZKxOPB1bFy8yU2zrXa+MRwFYLo5pK+W04m4QDTd
        c1fgzLZK5Kv2KXEy/YvEqUjrVEaK3RufSVt2IOA==
X-Received: by 2002:ac8:57c5:0:b0:301:3788:f5c1 with SMTP id w5-20020ac857c5000000b003013788f5c1mr28183741qta.241.1654714478109;
        Wed, 08 Jun 2022 11:54:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzOz74t0b9Z7GWQdnfTpwEl8Uh8nFLGG9HqAZmO8vUZf2wWd9HSkWHD9Hp1uHliPJkU+zBYW2rnxQUYAyfzKmk=
X-Received: by 2002:ac8:57c5:0:b0:301:3788:f5c1 with SMTP id
 w5-20020ac857c5000000b003013788f5c1mr28183721qta.241.1654714477726; Wed, 08
 Jun 2022 11:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190522133053.GE28920@kroah.com> <bf40a3f2-3d17-b9f8-1f10-85d3adb6709b@lohutok.net>
 <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx> <87y1y8xrzx.fsf@ebb.org> <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net> <YqCsfqgO07BITgfU@ebb.org>
 <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net> <YqDZyOh6zQPNN0AY@ebb.org>
In-Reply-To: <YqDZyOh6zQPNN0AY@ebb.org>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Wed, 8 Jun 2022 14:54:26 -0400
Message-ID: <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
To:     "Bradley M. Kuhn" <bkuhn@ebb.org>
Cc:     Allison Randal <allison@lohutok.net>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-spdx@vger.kernel.org
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Wed, Jun 8, 2022 at 1:24 PM Bradley M. Kuhn <bkuhn@ebb.org> wrote:

> So, the problem we has is we really have no way of knowing for sure that
> variance in (say) the warranty disclaimer was intentional or just goofy =
=E2=80=94 and
> if it was just goofy, did that goofiness end up being legally significant=
?
> For all we know, minor changes were determined as very significant by som=
e
> contributor who has a lot of liability and fears a warranty claim.  Who a=
re
> we to judge =E2=80=94 given that GPLv2 *does* allow you to vary your warr=
anty
> disclaimer (or remove it entirely)?

To be a little clearer about why this bothers me a little bit. I know
that in the past the FSF gave public guidance to companies that it was
okay to tack on materially different warranty and liability disclaimer
language to GPL notices (or, say, in global product license
agreements). (GPLv3 codifies this in its section 7.) Also, earlier in
my time at Red Hat I went through a period where I was recommending to
developers to include some disclaimer language that differed from what
you have in the traditional GPL boilerplate. The point is that there
are cases where the materially different language is deliberate and
reflected the legal preferences of the contributor (or contributor's
employer) in question

> Which, BTW, leads to another key point: SPDX identifiers do *not* indicat=
e
> whether a standard warranty claim, or no warranty claim, or anything else=
 was
> present.  Without this external file, how is anyone to know without diggi=
ng
> through Git logs *whether* a warranty disclaimer used to be there or not?=
  I
> hadn't thought about this before, but this is actually a huge bug in SPDX=
.
> Part of the reason we're struggling with this is that SPDX *should have*
> provided identifiers for the items that GPLv2 allows to vary in presentat=
ion
> and terms of the licenses!

This is an interesting point. SPDX identifiers were I think originally
meant to refer to license texts, not license notices, except for the
"or-later" vs. "only" issue found in the GPL family.

If you had a GPLv2 license file altered so that the warranty
disclaimer section had some additional language, SPDX would say this
is not "GPL-2.0-only" anymore because the matching criterion fails. It
would need a LicenseRef- or a new standard SPDX identifier. I am not
sure why a GPLv2-only license *notice* containing nonstandard, legally
significant language shouldn't be treated as distinct from what SPDX
means by "GPL-2.0-only" if what you're doing is removing the
historical license notice from the source file.

I wonder if "SPDX-License-Identifier:" isn't sufficiently well defined.

> I realize that as of, like, "now" as in "the last 24 hours", that's true,
> because Thomas indicated that he updated/is-updating his patch set to exc=
lude
> the ones Fontana identified (IIUC).  But I have two concerns: (a) Thomas
> already indicated that tabling this issue in 2019 led to slow down on the
> project, and I presume it will do so again if it's tabled again and (b) t=
he
> number of lawyers reviewing these patches is minimal, and they're also hu=
man
> beings and they may miss stuff (and/or may disagree about the legal
> significance).  As such, I think there are already no certainty that some
> items that the patch-reviewers believed were legally insignificant are
> actually legally significant.
>
> It also leads me to ask Fontana, since he seems to be the only lawyer
> watching this issue: are you *sure* there weren't other patches that drif=
ted
> through already that had legally-significant variance in warranty disclai=
mer?

No, because I didn't have that much time to focus on this in 2019 and
less time now. If I have some time soon I will try to go through
Thomas's recent patchsets but I only looked at a small number of them.

 Richard

