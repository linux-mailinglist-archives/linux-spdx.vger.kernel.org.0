Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF4567D1D39
	for <lists+linux-spdx@lfdr.de>; Sat, 21 Oct 2023 15:25:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230361AbjJUNZG (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sat, 21 Oct 2023 09:25:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjJUNZE (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sat, 21 Oct 2023 09:25:04 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F06D63
        for <linux-spdx@vger.kernel.org>; Sat, 21 Oct 2023 06:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1697894649;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=sAJJoylF1cW1oW2mCcwy+DSGsa9dllVFEwoULjFHt7U=;
        b=bavzUNnJWFisWT60X4K6nCXnzfZeiMBQpSuOzflL9KYThC9ogtneKFS6foFLEfyb/2DmPI
        9Om0M68ZmsV7S4klCWWyGEFwhNzcs2SczuMretQlVcF5wfM9TGDoygqitGyKHW+zAwcgbs
        h9+8PQxoLQJs99WFA164zDWLbcCaXhg=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-209-2c0npWIbPDGxaRkrOCrgFg-1; Sat, 21 Oct 2023 09:24:08 -0400
X-MC-Unique: 2c0npWIbPDGxaRkrOCrgFg-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-53df4385dccso1094287a12.0
        for <linux-spdx@vger.kernel.org>; Sat, 21 Oct 2023 06:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697894647; x=1698499447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sAJJoylF1cW1oW2mCcwy+DSGsa9dllVFEwoULjFHt7U=;
        b=iSEGnn+eq0vB3QM+Zc7MfziN44NQOUMr82fWFEuYCYHvfSeb9bGN46G/TVFn2r7khz
         +1opVkPCygpAbrwIgNyJyb7OlSsNmvMMrYb72cHlsv6Rs0+DgC9OIJuxldVSrEIrIG3V
         KtYoBkzw088gXJ2q4Kr/WVKanmP5/F7RfE54T5gSOFarXEEb4LV26hEAZq8+9UGewTFL
         1axcgEp43MiJ4zJDrxVXHM5hFVyTGG6qdYCRxw9DudZH2YxUbNaYscCfkEbDzPrHW7WC
         KV0hOPSCqQz+A+HhivUIgO8AZCIP09iUZy2X58GB57bTEFspDe3droAxq+WxLfsdirNe
         FfRQ==
X-Gm-Message-State: AOJu0YxWHwWg4nCB6Ln2oapj5jlPluvTJ7Hh/JO6+DsSHgUSPNBdUqig
        rJGUlhHFTd+oFiaafg1RZPD/KQ5b8ErW5tjXGU1muV9sd8OILuSeKK+p/pqLv6lyLstYx0gpcBs
        FvSR108jDF4PaqhBaumtLQF08e9icD+v6m5VDRA==
X-Received: by 2002:a50:aacf:0:b0:53e:1388:cb2e with SMTP id r15-20020a50aacf000000b0053e1388cb2emr3332760edc.35.1697894647030;
        Sat, 21 Oct 2023 06:24:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyy9uSFCMUqfgN2rj17ch/G/jvq1QTWJGPAXTF5FtC6Qouo5v3kERhMpzgMczbfZXe5FR3mAcf/aFuBhBAvjs=
X-Received: by 2002:a50:aacf:0:b0:53e:1388:cb2e with SMTP id
 r15-20020a50aacf000000b0053e1388cb2emr3332740edc.35.1697894646692; Sat, 21
 Oct 2023 06:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <143690ecc1102c0f67fa7faec437ec7b02bb2304.1697885975.git.lukas@wunner.de>
In-Reply-To: <143690ecc1102c0f67fa7faec437ec7b02bb2304.1697885975.git.lukas@wunner.de>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Sat, 21 Oct 2023 09:23:55 -0400
Message-ID: <CAC1cPGx-cb+YZ9KgEFvSjtf+fp9Dhcn4sm9qHmFFDRDxb=7fHg@mail.gmail.com>
Subject: Re: [PATCH] treewide: Add SPDX identifier to IETF ASN.1 modules
To:     Lukas Wunner <lukas@wunner.de>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-spdx@vger.kernel.org, David Howells <dhowells@redhat.com>,
        Tadeusz Struk <tadeusz.struk@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, keyrings@vger.kernel.org,
        linux-crypto@vger.kernel.org, Hyunchul Lee <hyc.lee@gmail.com>,
        Namjae Jeon <linkinjeon@kernel.org>,
        Steve French <sfrench@samba.org>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Tom Talpey <tom@talpey.com>, linux-cifs@vger.kernel.org,
        Taehee Yoo <ap420073@gmail.com>,
        Pablo Neira Ayuso <pablo@netfilter.org>,
        Jozsef Kadlecsik <kadlec@netfilter.org>,
        Florian Westphal <fw@strlen.de>, coreteam@netfilter.org,
        netfilter-devel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sat, Oct 21, 2023 at 7:25=E2=80=AFAM Lukas Wunner <lukas@wunner.de> wrot=
e:
>
> Per section 4.c. of the IETF Trust Legal Provisions, "Code Components"
> in IETF Documents are licensed on the terms of the BSD-3-Clause license:
>
> https://trustee.ietf.org/documents/trust-legal-provisions/tlp-5/
>
> The term "Code Components" specifically includes ASN.1 modules:
>
> https://trustee.ietf.org/documents/trust-legal-provisions/code-components=
-list-3/

Sorry if this seems super-pedantic but I am pretty sure the license
text in the IETF Trust Legal Provisions does not actually match SPDX
`BSD-3-Clause` because of one additional word in clause 3 ("specific"
before "contributors"), so IMO you should get SPDX to modify its
definition of `BSD-3-Clause` prior to applying this patch (or get IETF
to change its version of the license, but I imagine that would be more
difficult). This issue of a multitude of nonsubstantively different,
non-matching versions of clause 3 is a common issue that has been
coming up in the Fedora project's adoption of SPDX identifiers for
license metadata.

Richard

