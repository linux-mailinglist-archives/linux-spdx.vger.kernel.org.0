Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B6F053EF48
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:13:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233081AbiFFUNG (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:13:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233241AbiFFUNA (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:13:00 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3C7AF6430
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654546378;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=pXiPhUx4ErFc9GQYQACrZ1u5PN+Mt+kLeUaPk7I4chg=;
        b=QrLHOSlD/xI7LiucTNOyZWw4vSK5JtgWJThl7AYO2C3pqP/DxoMoAQbkK14Y8ii0lMsXgC
        lhZf85rzhM5Pj7HEAAqOt8rfzXVZvgLc97i5g9wg/CCUGjyfXKAI0D4bDM5Z9OIBs2dkES
        1LXNp+vi9Dz1c3AQj+kZiwpswh5Su2A=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-HW5sdtIQOk2vZiIB1eT3JA-1; Mon, 06 Jun 2022 16:12:07 -0400
X-MC-Unique: HW5sdtIQOk2vZiIB1eT3JA-1
Received: by mail-qk1-f199.google.com with SMTP id de30-20020a05620a371e00b006a6a4ae9049so7033659qkb.12
        for <linux-spdx@vger.kernel.org>; Mon, 06 Jun 2022 13:12:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pXiPhUx4ErFc9GQYQACrZ1u5PN+Mt+kLeUaPk7I4chg=;
        b=hDbRKmPerN6TNtIZK3LRDZ5UFuAjaKFQ3eGh3zdbO1+l+icYtapUW3/sRJktzCEa87
         tKVFN/X0Q6QFLHEMk+sOmhaqKSnv9o2zubzrj/BZPh5ysPacOMY9cvLP1SbIXnqOXFxu
         ZWi4inCpp6OutNNdAP8vYUIelgbNl7WXJgxD258j7F4m25ea8mpv73jmbVM4Nyc73El3
         QUzYkT/2k0DogF8J/gl99xXLKwGifhbua71KueCSumD6DDrBJd6WRZRiDs4PPSe9plfv
         MTN4kVLVCNxIuI07tlnJzqNMn3la5gYDgXP3OKOp4wY2sbzb3Z3vBxaiMpaOsHoAwCMT
         Hzuw==
X-Gm-Message-State: AOAM532aQchny4l+ZiKJi9C0wJzQGjRhQ2m9Xm8a1SCRbnHWQeuCyZoi
        /1fca0MSth/bQoVnWC/PgEjtcpZDy6eOuFCfAe18p88io/lWNNq7eybNerKpMRYCHQuPUgYXi2D
        rY1GA7JIfQoBseiZp22ay/0BtWXimXWb/AmiroQ==
X-Received: by 2002:ad4:5dcd:0:b0:46b:9e62:e9fa with SMTP id m13-20020ad45dcd000000b0046b9e62e9famr4866280qvh.123.1654546326364;
        Mon, 06 Jun 2022 13:12:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlpJiTh+7KLpUnDe2QKaHFoYT9p9Zr+lm46/DsnZWBadYXqH2srNOWfrMaQScWLap4E6Ep3diqfWNvpwy0uCo=
X-Received: by 2002:ad4:5dcd:0:b0:46b:9e62:e9fa with SMTP id
 m13-20020ad45dcd000000b0046b9e62e9famr4866270qvh.123.1654546326142; Mon, 06
 Jun 2022 13:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220606195512.584745712@linutronix.de>
In-Reply-To: <20220606195512.584745712@linutronix.de>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Mon, 6 Jun 2022 16:11:53 -0400
Message-ID: <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Mon, Jun 6, 2022 at 3:58 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Folks!
> References: <20220606194042.428568932@linutronix.de>
> MIME-Version: 1.0
> Content-Type: text/plain; charset=UTF-8
>
> Based on the normalized pattern:
>
>     this program is free software you can redistribute it and/or modify it
>     under the terms of version 2 of the gnu general public license as
>     published by the free software foundation  this program is distributed
>     in the hope that it will be useful all express or implied conditions
>     representations and warranties including any implied warranty of
>     merchantability fitness for a particular purpose or non-infringement
>     are disclaimed except to the extent that such disclaimers are held to
>     be legally invalid see the gnu general public license for more details
>     a copy of which can be found in the file copying included with this
>     package

I forget how we dealt with things like this in the initial large batch
some years ago but I remember raising the concern that some bespoke
license notices contained disclaimer language that was arguably
materially different in some way from what is found in GPLv2 itself.
This might be another example. I think in some such cases we at least
considered preserving the nonstandard disclaimer language.

Richard

