Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC93153EF78
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233793AbiFFUUq (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234283AbiFFUUZ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:20:25 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BD17FD4B
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654546812;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=tea6bAu+039Ri+h4KHTuZnZFWFZ762IOOH5R3Us5sYg=;
        b=Ed3ZTZ9/i/fMxsh33fq+Ld/y45ZYaPPpGQ/kczao6KCXfpDt+Zr+NOOfoPk4k8J1rLlnjh
        Ht0M/xKjv28EL7iofueLwnz0GbG6X/zVfX12pAEU1RTtTU7EmA/aKh8uw2ZYWS2SNFXRqi
        Lue9a3hUgEPK4o7zUf9R5XYbzhOVSMI=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-pWLCIoVBM-qRDZqmalOg6w-1; Mon, 06 Jun 2022 16:20:09 -0400
X-MC-Unique: pWLCIoVBM-qRDZqmalOg6w-1
Received: by mail-qv1-f70.google.com with SMTP id e2-20020ad45582000000b00466c14d5700so8182669qvx.19
        for <linux-spdx@vger.kernel.org>; Mon, 06 Jun 2022 13:20:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tea6bAu+039Ri+h4KHTuZnZFWFZ762IOOH5R3Us5sYg=;
        b=KT7195yn2BclygpWzNA+ZBkW2YvHhsL/MB+L0IV808fBZPKhoZDRy0KjTThU7V3Lpj
         onEHxIbVDCqeUf71qAAXm4uqwM7AeNC6UhfpqyA7B6nnJM+azStj9QZcX/UvWMe/rCaH
         1ERI/jgXA1yI0rErq3ZkV/qe+1f0rv+ehJ0SPF4STFqPy2HmqVZnZUWGtnj2j7MZrQ/I
         FsU/AYCMWot/pOAooG/hBeqDc/EYQ6eMSC6iPPvR9/VB3ZKIX8pd0JwFIhxJlaFP+ZAo
         w++zAmJXBEHCoI+/c4u0Nmc7OPzlDCV7za6UPcPZcfohjzaWNauf19mQLqBBfwbA1Mqm
         VJgQ==
X-Gm-Message-State: AOAM531MHJ9Zi5G6UeTFlXxyAiG4C9RPXTkHm2/jhVfyn/DTWH7lnJHG
        DO7PiKWMjlVOZrA7TSOQg4keqQGlchWADwBmDUzjXF1FDd485LuY7AE5H8Muy4s+gP+63VfDMIg
        tt8q3M5Ib+R/+l9Hypg+CnLvqjIvRqMZ8pr6MEg==
X-Received: by 2002:a05:622a:2:b0:304:ed47:1571 with SMTP id x2-20020a05622a000200b00304ed471571mr5289149qtw.43.1654546808558;
        Mon, 06 Jun 2022 13:20:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyiSQVaNrGfV8a3ZOf9ipMHBz59xHVLXQDTdXVohax5p0HFwyQB07NV18yeNvBfx1ZBKdwfJPS93oNYjnAbLhY=
X-Received: by 2002:a05:622a:2:b0:304:ed47:1571 with SMTP id
 x2-20020a05622a000200b00304ed471571mr5289134qtw.43.1654546808286; Mon, 06 Jun
 2022 13:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220606195511.998456125@linutronix.de>
In-Reply-To: <20220606195511.998456125@linutronix.de>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Mon, 6 Jun 2022 16:19:57 -0400
Message-ID: <CAC1cPGyTN1LcgSoM3ziJ5d+t6QBc7-TczbUiU65Bb=UroEW+hA@mail.gmail.com>
Subject: Re: [Batch 1 - patch 02/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_13.RULE
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
>     under the terms of the gnu general public license as published by the
>     free software foundation version 2 of the license  this program is
>     distributed in the hope that it will be useful but without any
>     warranty without even the implied warranty of merchantability or
>     fitness for a particular purpose see the gnu general public license
>     for more details  no warranty the program is provided on an as is
>     basis without warranties or conditions of any kind either express or
>     implied including without limitation any warranties or conditions of
>     title non-infringement merchantability or fitness for a particular
>     purpose each recipient is solely responsible for determining the
>     appropriateness of using and distributing the program and assumes all
>     risks associated with its exercise of rights under this agreement
>     including but not limited to the risks and costs of program errors
>     damage to or loss of data programs or equipment and unavailability or
>     interruption of operations  disclaimer of liability neither recipient
>     nor any contributors shall have any liability for any direct indirect
>     incidental special exemplary or consequential damages (including
>     without limitation lost profits) however caused and on any theory of
>     liability whether in contract strict liability or tort (including
>     negligence or otherwise) arising in any way out of the use or
>     distribution of the program or the exercise of any rights granted
>     hereunder even if advised of the possibility of such damages  you
>     should have received a copy of the gnu general public license along
>     with this program if not write to the free software foundation inc 59
>     temple place suite 330 boston ma 02111-1307 usa

Another example of possibly-significant deviation from the GPLv2
disclaimer language.

Richard

