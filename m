Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5158553EF60
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:14:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233192AbiFFUOw (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:14:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233380AbiFFUOe (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:14:34 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2BED64FC4C
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654546458;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6ms4cvsPi7hDpBVmGVhafhIOChm0rzU//UmDZieqLNc=;
        b=TUi5aRK2UV6t2llLJc1Splh+ep+jvcxGvctxPj5VLw0VlCyxnPd8QIcJDorTEEKqmMgKkd
        7R6kH1zyEWzXktnygi0HOICj8Tyoyr9Qo63Gw1f7B5fjwpSLzzuqdO9hxdo/KAwAm7JS35
        ccXJH5GJ/bGvDdLvqf6+QwK/Zeiv+64=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-153-BH9h2DZjMy23U2y6IhsBbA-1; Mon, 06 Jun 2022 16:14:17 -0400
X-MC-Unique: BH9h2DZjMy23U2y6IhsBbA-1
Received: by mail-qt1-f198.google.com with SMTP id 15-20020ac8570f000000b00304e9e3b19aso4163007qtw.8
        for <linux-spdx@vger.kernel.org>; Mon, 06 Jun 2022 13:14:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6ms4cvsPi7hDpBVmGVhafhIOChm0rzU//UmDZieqLNc=;
        b=5y3Vhj6geQJjYio/14jiOMBInUVJijxwSvDkaAgS72FVS+SE+b3b2ljelVrxIhPpmY
         ORP97RmWK4IpdpCQMGfMoBd/RAPa7IobtQ4s6QoiO4sXgaGRC6C5oeWRU+SUXQ2Ipj9+
         oGCzsKCHit3rQPOOuiQ7YtLuN2xC16VLRHkpE8jMNVv49R4o058kJU4kximCz5zYaTvm
         2Xnu77Rjjog7TjJzGDuuxVBiGlpVlZeUMzb6hkqPZmXHKBf2bEZA/nOwLBTsFb3UhUbm
         GE76XUaMpMXdYIW1Ool4PGD8YEO+KIYHoFLn3YVaQq1q3HMAPMDqSKbG0qXhNIvWHYV6
         lynw==
X-Gm-Message-State: AOAM530MpRCkvkgegp0QqF43KzZ/GfT2BT8cbu2B2ExJUBCSDcemfq2/
        cCkuPtHOlLhLefg+6bsXBcKGArZx8AgmNmpRkwGVd9Hfy39GnasBAAkbm6tkJIm6tG7xxj4pb/T
        sH4O1gXDMb+UGDmfZhTvJqT6nhkV5wDEXwObYIA==
X-Received: by 2002:ad4:5967:0:b0:464:6b55:3569 with SMTP id eq7-20020ad45967000000b004646b553569mr22779552qvb.43.1654546456609;
        Mon, 06 Jun 2022 13:14:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw43LxMQFkYYuUP0yYnoOedLdwuMfi8/gA6nfCRShhlj9vNc3rkV6gthFyquR3Y2Bq1SjMoTrEQhXI8oE7BZUw=
X-Received: by 2002:ad4:5967:0:b0:464:6b55:3569 with SMTP id
 eq7-20020ad45967000000b004646b553569mr22779534qvb.43.1654546456356; Mon, 06
 Jun 2022 13:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220606200732.204209102@linutronix.de> <20220606200811.187515502@linutronix.de>
In-Reply-To: <20220606200811.187515502@linutronix.de>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Mon, 6 Jun 2022 16:14:05 -0400
Message-ID: <CAC1cPGxHgbx47yGWwp+cqw88bOP1cbWnRXwQuhBnc-7k7Hmgnw@mail.gmail.com>
Subject: Re: [patch 19/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_347.RULE
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

On Mon, Jun 6, 2022 at 4:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Based on the normalized pattern:
>
>     this program is free software you can redistribute it and/or modify it
>     under the terms of the gnu general public license as published by the
>     free software foundation version 2 of the license and no later version
>     this program is distributed in the hope that it will be useful but
>     without any warranty without even the implied warranty of
>     merchantability or fitness for a particular purpose good title or non
>     infringement see the gnu general public license for more details  you
>     should have received a copy of the gnu general public license along
>     with this program if not write to the free software foundation inc 51
>     franklin st fifth floor boston ma 02110-1301 usa  the full gnu general
>     public license is included in this distribution in the file called
>     copying

Another example of a possibly significant deviation from GPLv2 in the
disclaimer language.

Richard

