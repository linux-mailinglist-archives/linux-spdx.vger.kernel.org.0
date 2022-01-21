Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 454D94964D1
	for <lists+linux-spdx@lfdr.de>; Fri, 21 Jan 2022 19:10:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382054AbiAUSKI (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 21 Jan 2022 13:10:08 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:41501 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1382045AbiAUSKH (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>);
        Fri, 21 Jan 2022 13:10:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1642788607;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=rqh1++d+JY4BasdGg/7RHLKqtDDn+ODlJo6mE4WZL2o=;
        b=MFETu4uJ9i3I2viXk0PaCTc+WfTQCmvlyGANrpluC/w/nRt8dDdCSIMJsfcQrMcfq65TlU
        2ByQoYmWGbVng94HxADtn3c2bDQW6Kp4YtyEIACOtreIdZgHtf7iRXm9WaVlHsCO35yEip
        y21uBDE42pdzKRgC7w1l5Rtv9/4gs8A=
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com
 [209.85.222.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-35-cX6w41tfO9ekXmR4_Mwg4Q-1; Fri, 21 Jan 2022 13:10:03 -0500
X-MC-Unique: cX6w41tfO9ekXmR4_Mwg4Q-1
Received: by mail-ua1-f71.google.com with SMTP id q19-20020ab04a13000000b002fef2f854a6so6038144uae.7
        for <linux-spdx@vger.kernel.org>; Fri, 21 Jan 2022 10:10:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rqh1++d+JY4BasdGg/7RHLKqtDDn+ODlJo6mE4WZL2o=;
        b=KoyGIWxt7pGscuC27ktT1fdVnrwUE4ZbC1Y9TXaTiNMPHJBkczZz0AdiW99LoN6CM5
         iukh3oKuwp81yjlmf3H1sol9QJewqogJ8Y3t1VOO3K3Uc6v8KabXNpZkAHD+ar4dsRMa
         tLg7rlr/ow9YcYhsxG7VwZenXf/9RpsC43nUBgQoYhPM6nAohDQ79TBkmw8NI9SyRlUJ
         I9WCnpah5a2w4r0fgFptUx0H2CtGZ6Q+c/M6n/F04S2vffyX48zf3luc6Uke6dbOhUfq
         kO02QTXc1SyuxYkE6ZlQe4uxEz37O3NbVIuRCtrZz888LeSFz63F2JgLlk7zfWZ26c+w
         lKYg==
X-Gm-Message-State: AOAM530JNXnnr2XvgcoRWzNyJyI5RZaWnaUNUo/EDk+BOus4mPczx/Od
        rBL9+L9IL8paHBGEXMwtEqGpMbla6djApg4+q0i+KqvczH89yQshP6xTzTLFEIZYQ50OixnFSq0
        ed7wiPnZ6SFnjL+Ig9BIpHp7QECCohVHolnrWBA==
X-Received: by 2002:a67:c911:: with SMTP id w17mr2052001vsk.23.1642788602588;
        Fri, 21 Jan 2022 10:10:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzIcdTU8wiDW6QlfD7iXb6wp73IfAqgwR1iqWVlTAgtLeEudcV3iLG/Aae+NYvTZGwrcZ+6r/lnRcWIx3JHH+o=
X-Received: by 2002:a67:c911:: with SMTP id w17mr2051986vsk.23.1642788602329;
 Fri, 21 Jan 2022 10:10:02 -0800 (PST)
MIME-Version: 1.0
References: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
In-Reply-To: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Fri, 21 Jan 2022 13:09:51 -0500
Message-ID: <CAC1cPGwb9eM=0VWiZx+G909Jt7a7=yx1CnVJ=kaFJfn4qxNWPw@mail.gmail.com>
Subject: Re: [PATCH v3] powerpc: Add missing SPDX license identifiers
To:     Christophe Leroy <christophe.leroy@csgroup.eu>
Cc:     Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Jan 21, 2022 at 6:03 AM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
> Several files are missing SPDX license identifiers.
>
> Following files are given the following SPDX identifier based on the comments in the top of the file:
>
>         include/asm/epapr_hcalls.h:/* SPDX-License-Identifier: GPL-2.0+ OR BSD */
>         include/asm/fsl_hcalls.h:/* SPDX-License-Identifier: GPL-2.0+ OR BSD */

"BSD" is not a defined SPDX identifier. I believe what you want here
is "BSD-3-Clause" (see: https://spdx.org/licenses/BSD-3-Clause.html)

Richard

