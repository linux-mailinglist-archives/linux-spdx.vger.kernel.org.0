Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CD0B4964E2
	for <lists+linux-spdx@lfdr.de>; Fri, 21 Jan 2022 19:17:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351856AbiAUSRh (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 21 Jan 2022 13:17:37 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:31095 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1382040AbiAUSRh (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>);
        Fri, 21 Jan 2022 13:17:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1642789056;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=GaacSGyAu6TYOpVxBPJ/k9LHhTirl5xGNv6nlz2aQl4=;
        b=VuKq2mgJboDoOjDAW53Oy4p9OaFLPygIpnceDhxVHhZsiIoNmuDDFpTGoBq1mihYuULEna
        8M3viC/yrN1rmV/KF93RBu7p5upqqYGcjA2BkBhNIzjtj/qVwgbqDnULYmBu2UhP08RV2W
        r3xpM0dqVYT7fEB1Vo2ewcoWWQ0cFf8=
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-102-Da-vIYYPNieB2So6JuHk5A-1; Fri, 21 Jan 2022 13:17:34 -0500
X-MC-Unique: Da-vIYYPNieB2So6JuHk5A-1
Received: by mail-ua1-f70.google.com with SMTP id e22-20020ab031d6000000b0030525c25702so6073404uan.6
        for <linux-spdx@vger.kernel.org>; Fri, 21 Jan 2022 10:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GaacSGyAu6TYOpVxBPJ/k9LHhTirl5xGNv6nlz2aQl4=;
        b=BPUgnFiQnte9Impt4F2JswaBRFxQFIZIzXNoq6FJ3aU5sQF4iQp86SO01LTPgTHkoF
         6sASVK7Y94PExNuZISo3b6On+H6a0DIZuAD+j3VOjl/s5KphBNvyKNbjXm5jNnBWWK4R
         Uvn3D5+QcwxVb+B8EJpMV+aCKXECF+IPTZ8dNypyLQxPFRF96k5plNtehxm+BcoIg8Vh
         M3ig6ekHQNkv3lLqx1QF55vPXmkROd+vKi34b04qp6iNPnppafRklHnrRa5m2KIUljWV
         IjIxlQcQTr3oyPtNtKdJg1+2EbEXeoOcApRkucMJRBNovuAhGeyYfSRzYAhgJZ+hC/K6
         wYAA==
X-Gm-Message-State: AOAM531VBic4Rfak/N4fzO+3iWldqXfLb7LT2AV15WserwFVOMbpGTSI
        BQXd/dtGnmL7mw9rSlsCqGmKe0F3WXsQuRKT6nfCItUWA27uDbomWFv52povGNL2hXOYvosC7HO
        bCBC/sFUSHft6wpLBU7wiwRrUveGiyCStjwJ5JA==
X-Received: by 2002:a1f:5702:: with SMTP id l2mr2301192vkb.33.1642789053499;
        Fri, 21 Jan 2022 10:17:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyKQVWJ6KXJy3LfcxZ4flOAQ9SGhoyK4JC3P8EQNxA7sLFJZbBXV8PCImDr+/8PzRc9uNEajJchjCAEfDylnfU=
X-Received: by 2002:a1f:5702:: with SMTP id l2mr2301185vkb.33.1642789053268;
 Fri, 21 Jan 2022 10:17:33 -0800 (PST)
MIME-Version: 1.0
References: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
In-Reply-To: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Fri, 21 Jan 2022 13:17:22 -0500
Message-ID: <CAC1cPGypAKcAAia4ipgTWNu33HLW=fb0CSroqR=SK-umrOJb-Q@mail.gmail.com>
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
>         include/asm/ibmebus.h:/* SPDX-License-Identifier: GPL-2.0 OR OpenIB BSD */
 [...]
>         platforms/pseries/ibmebus.c:// SPDX-License-Identifier: GPL-2.0 OR OpenIB BSD

"OpenIB BSD" is not a defined SPDX identifier. There is an SPDX
identifier "Linux-OpenIB"
https://spdx.org/licenses/Linux-OpenIB.html
but I believe that is not a match to what's in these files
(specifically, the wording of the disclaimer), rather I believe what
you want here is BSD-2-Clause, but you may want to check that.

Richard

