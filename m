Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2F0544186
	for <lists+linux-spdx@lfdr.de>; Thu,  9 Jun 2022 04:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236634AbiFICfj (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 8 Jun 2022 22:35:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbiFICfh (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 8 Jun 2022 22:35:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 10D80237C88
        for <linux-spdx@vger.kernel.org>; Wed,  8 Jun 2022 19:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654742134;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=X4k0w1uSkY4EnN8y4T2qwbirlcosnL+dKdRWkYWDJSc=;
        b=ZvfQ49Z84U6ek8w2gCYTI3+SES6bsGOB0wY0meplZB5D10NEyXKoCqzgWU/NLCnDeqw2ee
        lNR1hvMzazabbeqQYVq7dG95Ccd5B9M+32L2rnW7t4bkY0YAVbbLVMbk+oPXZkjjdg5J2u
        nVeDi6W1Bgnwxvz8BpX09I67iFMRnqk=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-ZAMwMWeCNL2XYdz0NGSowQ-1; Wed, 08 Jun 2022 22:35:33 -0400
X-MC-Unique: ZAMwMWeCNL2XYdz0NGSowQ-1
Received: by mail-qk1-f197.google.com with SMTP id v14-20020a05620a0f0e00b00699f4ea852cso18080806qkl.9
        for <linux-spdx@vger.kernel.org>; Wed, 08 Jun 2022 19:35:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=X4k0w1uSkY4EnN8y4T2qwbirlcosnL+dKdRWkYWDJSc=;
        b=KWv6PT3uQ+XV4XGnE1p7fMP/T/ss/+Zb06wg/aYiGw7u/J7PlL+3tSvfU0nZeS+Q6h
         ySSs1zizNKZV7R1D1Qwc+88sDEBWdTYWy2+qoQZxgnpy2DQuPDw5iaG6XLO4ayN08JY7
         0MCzApgfZ5i7ImIYRf3GhvHlMaaIWoDqjzOEl+dYVKPnkhvzVD+twIgJA+AZgmlU4mAn
         26UKqbgNMuGjoayUEHbF+Y2fnKDn/xlHspaz9fqrxZDdmIF9OawGh1asTjs3h/c0dANk
         WBvLRYtmONxhI0LUU26b4YNR4Zx0yyD51fLB1fiOePFrqa60CVBiL7be68hsgEKcNxkh
         j4rw==
X-Gm-Message-State: AOAM530bu0mDj2qFnVEi9v9F1ixPkVSaJYfEftNw+KcGoXpCke31Lni5
        bQh9NLdZDXvAXFgYjUT2J+PyARNGLYaj6cC9BYpZvJ7TbZTGl+kRWbCqWqJZgKeqi+lgpV1Rsm9
        N6LzJWVMNLlhoYuZp1ijAKejhRkw5Ytw7yXNBZw==
X-Received: by 2002:a05:620a:2546:b0:6a6:5fde:2308 with SMTP id s6-20020a05620a254600b006a65fde2308mr25526505qko.611.1654742132670;
        Wed, 08 Jun 2022 19:35:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwNlhxWynFyZqFE/IKLjFUWKX/zz2EqHKZUdqwRxsOSxExaBk/w32VTNJgR7Y5RZyyVczvQOMTncFdgoUczHqE=
X-Received: by 2002:a05:620a:2546:b0:6a6:5fde:2308 with SMTP id
 s6-20020a05620a254600b006a65fde2308mr25526498qko.611.1654742132385; Wed, 08
 Jun 2022 19:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAC1cPGyzP7s7U6fKoDkb01-Edm1i329Rx=DBQ9JWQTCdbq4p3A@mail.gmail.com>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
 <87bkv55yxh.ffs@tglx> <87y1y8xrzx.fsf@ebb.org> <87a6ao3wij.ffs@tglx>
 <7c5e1900-7a9b-ac6a-87ab-bf0d38f70f26@lohutok.net> <YqCsfqgO07BITgfU@ebb.org>
 <a9429d78-db06-7754-1d19-8c87b430bfcd@lohutok.net> <YqDZyOh6zQPNN0AY@ebb.org>
 <CAC1cPGyD=C-cgPJ2+9RmLQQC80Fk8XKb+7sHp=BqEBvViXRVvw@mail.gmail.com>
 <YqD4hjCHlRsuzNOl@ebb.org> <02f4021f-63a5-4796-d790-2bacd37b90d2@jilayne.com>
In-Reply-To: <02f4021f-63a5-4796-d790-2bacd37b90d2@jilayne.com>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Wed, 8 Jun 2022 22:35:21 -0400
Message-ID: <CAC1cPGzSCYJy=4q0tE3Nw1V-r3_AzC48NTSu5NakF3jMbVRjig@mail.gmail.com>
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
To:     J Lovejoy <opensource@jilayne.com>
Cc:     "Bradley M. Kuhn" <bkuhn@ebb.org>,
        Allison Randal <allison@lohutok.net>,
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

On Wed, Jun 8, 2022 at 7:16 PM J Lovejoy <opensource@jilayne.com> wrote:
>
> On the topic of comparison - the warranty in the standard license notice =
states, "This program is distributed in the hope that it will be useful, bu=
t WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILIT=
Y or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License f=
or more details."
> It is a truncated version of what is actually in the license, which (I ta=
ke) as the reason for "see ... license for more details". Thus, the overall=
 comparison of these variations we are finding should look to the full text=
 of the disclaimer of warranty in the license, not just the standard notice=
.

Agreed. The cases I was trying to flag (both now and in ~2019)
generally involve ones where the author is adding disclaimers of
implied warranties not explicitly found in GPLv2.

Richard

