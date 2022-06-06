Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B807553EF6F
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233506AbiFFUTc (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233881AbiFFUTX (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:19:23 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2421DE084
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654546745;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=KJuikjmNrZSlRv7Z28NDAHwx8Qc9Aq43dWRtpWz3nRs=;
        b=DPYxrjF8RMT2Ic1c8YxLOyhAAZOxL/WJxnEYmor5B8rNZQN+4JQ2kchfE8NpuCQK4S0oJR
        wk+C+6Vk/z7KLWotW9qkZ7jkv43gba1PrIn57XW9nUJmU5uBgOEsYlb9JnrHKcV0rvQ5Fv
        JDe7FSNwIMZGon4qoXJZRnfSOqgmUNs=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-30-PdR_BzJUMXGDccapi8uUxw-1; Mon, 06 Jun 2022 16:19:04 -0400
X-MC-Unique: PdR_BzJUMXGDccapi8uUxw-1
Received: by mail-qt1-f199.google.com with SMTP id t14-20020a05622a01ce00b002ff91ea4445so12426797qtw.2
        for <linux-spdx@vger.kernel.org>; Mon, 06 Jun 2022 13:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KJuikjmNrZSlRv7Z28NDAHwx8Qc9Aq43dWRtpWz3nRs=;
        b=hnGotnYB3XKsBAvu27l7mZ4lig+BmPIqjTLAZJ4/f/kkiTiIctDFOhltX+fgnc8wfE
         RzjLAgtdKDlBTYgdXgmCTzPGx3UbY1zsA6hAZcQPvrsSgSRriWcjmZ/TDdoQu1NpezGe
         hMnVB3nw8i+iClp/tTl5xYg7NFDuiXX3iFZiBstQ8shd0gqJI2qlWDv0sdJjUOpvL1dD
         wrJ/T8T/8tjcSFHbeRsrqYeqJBQt94hi08hHiut8lu+0uBS5tlGdkSLeSm0e+4l9D4mq
         Pe3SYIDufZyGOow3YrkE0+H4OQVYh6fESKYACEb4DGVYETYEJaStqbmPsFLLn1KVpC1y
         QEHA==
X-Gm-Message-State: AOAM5302cS3LqdIwbBczN4Yni9dOHv6nQJ/81tVGT252sVpenvwNw9kU
        JaH3oIIFnO0jnt+w1Kzjbzsc+s5EX25Vy7jwN9jdVfdbxuUKXfBKfrUyHwF8qAChEOclUbrYJNC
        A9DAVOoaAbBp2VM5F0Bx7nSRaLJ+xfQtOp6fRGA==
X-Received: by 2002:a05:6214:628:b0:46b:188b:b8ac with SMTP id a8-20020a056214062800b0046b188bb8acmr8713191qvx.28.1654546743617;
        Mon, 06 Jun 2022 13:19:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5YnKmjEObJGQ4FshYbbY8g5FkCx0rixVHxweQcPC5qOrDPZqS7sZtM6kGSdDGDL2PCYO4rr+pZQO+qMTR558=
X-Received: by 2002:a05:6214:628:b0:46b:188b:b8ac with SMTP id
 a8-20020a056214062800b0046b188bb8acmr8713171qvx.28.1654546743270; Mon, 06 Jun
 2022 13:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220606195513.338726671@linutronix.de>
In-Reply-To: <20220606195513.338726671@linutronix.de>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Mon, 6 Jun 2022 16:18:51 -0400
Message-ID: <CAC1cPGxwuJQnBtteJvbcMFku1z9ug0mFKncfTGYar12qbgZR4g@mail.gmail.com>
Subject: Re: [Batch 1 - patch 25/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_409.RULE
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

On Mon, Jun 6, 2022 at 3:59 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Folks!
> References: <20220606194042.428568932@linutronix.de>
> MIME-Version: 1.0
> Content-Type: text/plain; charset=UTF-8
>
> Based on the normalized pattern:
>
>     this program is free software you can redistribute it and/or modify it
>     under the terms of the gnu general public license version 2 as
>     published by the free software foundation  the software is provided as
>     is without warranty of any kind express or implied including but not
>     limited to the warranties of merchantability fitness for a particular
>     purpose and noninfringement of third party rights in no event shall
>     the copyright holder(s) and author(s) be liable for any claim or any
>     special indirect or consequential damages or any damages whatsoever
>     resulting from loss of use data or profits whether in an action of
>     contract negligence or other tortious action arising out of or in
>     connection with the use or performance of this software  all liability
>     including liability for infringement of any patents copyrights
>     trademarks or other rights relating to use of this software is
>     disclaimed

Another example of a possibly-significant deviation from the GPLv2
disclaimer language.

Richard

