Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB5D37DF4A0
	for <lists+linux-spdx@lfdr.de>; Thu,  2 Nov 2023 15:11:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376734AbjKBOLR (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 2 Nov 2023 10:11:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376737AbjKBOLQ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 2 Nov 2023 10:11:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2910012E
        for <linux-spdx@vger.kernel.org>; Thu,  2 Nov 2023 07:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1698934232;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=QoDps1pxenwZOZ9m0T+aL+AuxWCgPC/zSX1/to1vF98=;
        b=KRhMIGY7fru/Z6kZg85yUVjf7TNeyMTsVgZLlQf4W9avJ4yhB1Rt7XNg/rg4YUxqcoUZH6
        olO993YeZC9SExcynpQrSaXFA7sJoHgKMRpfEPdWpC5mPiuOShc0pCzzcQU5jiJC7pq5ZZ
        JFeAXN31a7lAYXZpYoeUociuZk5fD8I=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-dIxq2ezrNQaxU-_ptD9nyQ-1; Thu, 02 Nov 2023 10:10:30 -0400
X-MC-Unique: dIxq2ezrNQaxU-_ptD9nyQ-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-313c930ee0eso460795f8f.0
        for <linux-spdx@vger.kernel.org>; Thu, 02 Nov 2023 07:10:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698934229; x=1699539029;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QoDps1pxenwZOZ9m0T+aL+AuxWCgPC/zSX1/to1vF98=;
        b=J4wzlI26ok9TGOw3muqADndBsoSv6+UZQ+fiWNg2aBCnsrvTgKM9sp7WNLevYchDVi
         RKI+fu0Q++UMCGxwDtTcYJBWxHd16e0OZb/73PWaNN7l1pTfqUowf2CE6H32qciHKIXn
         OKz0ChYfY+PIdB901q37pE9zhGd9jWUkbhs3lkx5+i0MYLVaCpKq3HCWp7LetdwAYRgr
         9iIw0/8CVI+NATAgC1NAD8ROdmG+cm0Wu4S7z/KS9fqUEo5DtL3nWQeKa+mvyQSBxlB5
         iD+OvrCGkh4167LP7eeDk/C7930lAh6s1XLZDTmuabsp0lfMBD9CddzyM9ERWHx9SOAL
         31kA==
X-Gm-Message-State: AOJu0YxzYXoBIi/zRstaTLG4roe/jFau3+nhoF8fauaJkfWCgAM5beJB
        3Ps7HfD8AKO+rXa/zJg8R2ro0sA/biAr6wPnXX2NIp5HSPl8UdVOy/0M6xqId4xb4PFeUU/9/Zh
        28ykvBs5G02xTtroJZPlGl4y1UcuCiu6o9Ar4gg==
X-Received: by 2002:a17:907:944e:b0:9ae:4054:5d2a with SMTP id dl14-20020a170907944e00b009ae40545d2amr3934481ejc.16.1698934209629;
        Thu, 02 Nov 2023 07:10:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbGYdqxJN3m4Nv7wv0qiHgRhXyVFeWYKkE+7liknOETb85M5Alo7t0Jt9qSHRRXvfDHVOUKhcw9Y6lkbu8Tzs=
X-Received: by 2002:a17:907:944e:b0:9ae:4054:5d2a with SMTP id
 dl14-20020a170907944e00b009ae40545d2amr3934457ejc.16.1698934209253; Thu, 02
 Nov 2023 07:10:09 -0700 (PDT)
MIME-Version: 1.0
References: <20231102120053.30630-1-bagasdotme@gmail.com> <20231102120053.30630-2-bagasdotme@gmail.com>
In-Reply-To: <20231102120053.30630-2-bagasdotme@gmail.com>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Thu, 2 Nov 2023 10:09:57 -0400
Message-ID: <CAC1cPGyLGEwMBRGhwoGmGBeM8qTbuuUsbeZTiiMNUvk4MT75Gw@mail.gmail.com>
Subject: Re: [PATCH RFC 1/4] LICENSES: Add SIL Open Font License 1.1
To:     Bagas Sanjaya <bagasdotme@gmail.com>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Documentation <linux-doc@ger.kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Akira Yokosawa <akiyks@gmail.com>,
        Stanislav Fomichev <sdf@google.com>,
        David Vernet <void@manifault.com>,
        Miguel Ojeda <ojeda@kernel.org>, James Seo <james@equiv.tech>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Federico Vaga <federico.vaga@vaga.pv.it>,
        Carlos Bilbao <carlos.bilbao@amd.com>,
        linux-spdx@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Nov 2, 2023 at 8:01=E2=80=AFAM Bagas Sanjaya <bagasdotme@gmail.com>=
 wrote:
>
> Add the license text along with appropriate tags for reference and
> tooling. The text is taken from the text as distributed in Google
> Fonts's zip files.
>
> As the license itself may or may note be compatible with GPLv2,
> let's take on the err side and require combining it with
> GPL-compatible licenses when using the license.

I don't really  understand this, though maybe it doesn't practically matter=
 -
"It's best to use it together
+  with a GPL2 compatible license using "OR", as OFL-1.1 texts processed by
+  the kernel's build system might combine it with content taken from more
+  restrictive licenses."

I didn't check if this text is just copied from that in other license files=
.

I'm not sure how this would actually come up in practice for OFL-1.1.
I assume that typically the way OFL-1.1 can cover stuff in the kernel
is through font files, and that therefore it would be unlikely for a
source file to include any code covered by OFL-1.1. Indeed, as you
say:

> +  Do NOT use this license for code, but it's acceptable for fonts (where=
 the
> +  license is specifically written for them). It's best to use it togethe=
r

Even if that did occur, the use of `OR` is only appropriate if the
stuff covered by OFL-1.1 is actually dual-licensed.

I think it should be beyond dispute that OFL-1.1 is incompatible with
the GPL (over at the Fedora project we don't even classify it as a
FOSS license), not that that is likely to matter for the kernel.

Richard

