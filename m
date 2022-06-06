Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A46A53EF72
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:19:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233713AbiFFUTn (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233854AbiFFUSh (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:18:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A830CB855
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654546704;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=jO6MXA7E0a0SgSn2/M777+O0omh5zXf7Bmb9ZD7riiU=;
        b=ddQ1WsL9m+AT7tFUG6McMHRILLLe02bf0PwHYIRjQhxz/Xzme26tn63XHK9F2xnoKCSgaT
        4LfwUvEizHjd52hRtE52XyIpSNL3Zti5mafURHvxDr9A+w41eHq4VMewF96Hz9ZaTdk3bL
        Ykyfx6zvAZVd/pXJAXxW6GxcKl+bbAo=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-dwKNzHuiM66Sq7_K4S_ZOQ-1; Mon, 06 Jun 2022 16:16:10 -0400
X-MC-Unique: dwKNzHuiM66Sq7_K4S_ZOQ-1
Received: by mail-qk1-f199.google.com with SMTP id c8-20020a05620a268800b0069c0f1b3206so12431858qkp.18
        for <linux-spdx@vger.kernel.org>; Mon, 06 Jun 2022 13:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jO6MXA7E0a0SgSn2/M777+O0omh5zXf7Bmb9ZD7riiU=;
        b=sF9EYgQv7hjXtQLqfwfvuNiMZSEYXQNMJwZRS6/6IFpiMctzJ/ns5aQzH6xQxB1OJv
         dyr8ccx135foUACF1/7NRWNmW0fSzxakiVrKZXfH8zaMKaaTdxy6G3qt4xxpNuBVa2ol
         cok+4G1rhUYOife/Cx3BRL619Bqhv/qQ4sPfuPRX/B2YYKok3aTg+sOGG8vQ4AALFIqh
         vOO6CLPDcs8WBuOXh7yCJTnXGY6t7cBIJjHJlewzo7ajb4fREALlkpx3gnJoLNwNa3WQ
         EXNPkWSa3aZmRdjXQzaLuzhqq2dxqW+XWJjDcHcE5YQmB4TiFqA0Ij3r2NB74VF/Oija
         UpMA==
X-Gm-Message-State: AOAM530iu1xgPbjmRjYJ2BBay1RS9BkDOmzF05ZgB+aZZt9Ko5VyN+Do
        dm/LyAT4y9ixLfsUtu7CzYghILiEIdA7JeEFN3khpaM6XE605dMj31h8agZ2d4yVfZL28szoy8Y
        FHn4mOEbgnvMqYYlVqBHMUio0bE1ZYcd+5cMzhw==
X-Received: by 2002:a05:620a:d4f:b0:67e:9cbf:a969 with SMTP id o15-20020a05620a0d4f00b0067e9cbfa969mr17026964qkl.509.1654546569893;
        Mon, 06 Jun 2022 13:16:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6Vd9VLLpp3e61N1pFZvYYcYEILSNf432rhRBdIreIwuX8yF7uZXyK9jhMhuedFMGjvkstnJntzAx5WRPKpXs=
X-Received: by 2002:a05:620a:d4f:b0:67e:9cbf:a969 with SMTP id
 o15-20020a05620a0d4f00b0067e9cbfa969mr17026936qkl.509.1654546569589; Mon, 06
 Jun 2022 13:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220606195512.641670264@linutronix.de>
In-Reply-To: <20220606195512.641670264@linutronix.de>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Mon, 6 Jun 2022 16:15:58 -0400
Message-ID: <CAC1cPGy1dH7Onx0esUnvU3r80_czNsQk5=2RWxymy+PkE+R9QA@mail.gmail.com>
Subject: Re: [Batch 1 - patch 13/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_240.RULE
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
>     hereunder even if advised of the possibility of such damages

Another example of a possibly-significant deviation from the GPLv2
disclaimer language.

Richard

