Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5D94EB5B6
	for <lists+linux-spdx@lfdr.de>; Wed, 30 Mar 2022 00:14:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236320AbiC2WQY (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 29 Mar 2022 18:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235927AbiC2WQX (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 29 Mar 2022 18:16:23 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5CE5186FAD
        for <linux-spdx@vger.kernel.org>; Tue, 29 Mar 2022 15:14:38 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso114013wme.5
        for <linux-spdx@vger.kernel.org>; Tue, 29 Mar 2022 15:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:mime-version:content-transfer-encoding
         :content-description:subject:to:from:date:reply-to;
        bh=+v//v9bV1cKxYYqp6E5HrJfuFydY/JXcjMGnmfr7lM0=;
        b=GZ4zVQeu/Ck5BYMf2yD2aEApLLeApqBkOoNmncQTeoR6UtnLioJH36gGP6s+GxDAti
         dg1dUIJk6NzwjEa4/vgtOLKlqUATbvgIWbEQoVA+RehYVpOrwlcWk/DIfzlb1rjkj6Hg
         uiMB82bfDu4OvPi7eAFHDvJi7bGJp0sdEYxU7K6tgYFUjgT6HfxVQXiT/Y1RU9Ln4xys
         6XpDnWxLvJNZKs3kJvsqtVkJyoQtdGSN8pPVV0ZJLzxJqeDFU3K030eLSF/7tc6jxewy
         aXLYrjUDYVVneiv1ESownsNSBB9dy3Q6THCIuO2kuM6BQ18adIyQZdkdRfdn5YfhVwpE
         bs7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:content-description:subject:to:from:date
         :reply-to;
        bh=+v//v9bV1cKxYYqp6E5HrJfuFydY/JXcjMGnmfr7lM0=;
        b=G+1pe/CIH5SZqrrfZnTbvDS6TykjJwGe62MoRMoHYIdqyvm1cgxnr8pN1sCjiSxIBm
         RJbAXwW7TkzY8m7BNUQKl16AEiWKgmW+CZCgPxawzeXinLiRImUfdxKCC27WOvp32H7C
         xZSAarp/2ub5Biz3pEw6fM0q5KRRXGtDRkijcNRbJPuPXgZbxFAHlckbSJ4/lfB6d8YC
         1+bX3Y2n7fEkrv3je9CUxJIK80mYTdOzJ17XVk56F6WKGUckMMu/Id8EJXXbYzeaYTK+
         1YUHKwDezj6LedSDMoaicX3b+c+nWM6I/MSAJCEEhwLN2BzRnBCkEUrKFypqAiovm5pi
         kfhQ==
X-Gm-Message-State: AOAM5311jeobUfHkTMnqpih6pz+IrLNdPHBgAwhkE51ExA2IUzw75T67
        iu9XCj4hIxLeVYPjf3OtcLA=
X-Google-Smtp-Source: ABdhPJxOCQuWXUyI7pETG8wmW1/OlrdfxyvlGuWVOsiFk3rosCr8Nivk9OljdbSfahRRhCnk4MFmNg==
X-Received: by 2002:a7b:cd82:0:b0:389:77ef:66d7 with SMTP id y2-20020a7bcd82000000b0038977ef66d7mr1456530wmj.171.1648592077453;
        Tue, 29 Mar 2022 15:14:37 -0700 (PDT)
Received: from [172.20.10.4] ([197.210.71.189])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c4fc900b0038cd93a59e4sm3424443wmq.28.2022.03.29.15.14.33
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 29 Mar 2022 15:14:36 -0700 (PDT)
Message-ID: <624384cc.1c69fb81.3d6f1.e49a@mx.google.com>
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Gefeliciteerd, er is geld aan je gedoneerd
To:     Recipients <adeboyejofolashade55@gmail.com>
From:   adeboyejofolashade55@gmail.com
Date:   Tue, 29 Mar 2022 23:14:28 +0100
Reply-To: mike.weirsky.foundation003@gmail.com
X-Spam-Status: No, score=2.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,RCVD_IN_SBL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,T_US_DOLLARS_3
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Beste begunstigde,

 Je hebt een liefdadigheidsdonatie van ($ 10.000.000,00) van Mr. Mike Weirs=
ky, een winnaar van een powerball-jackpotloterij van $ 273 miljoen.  Ik don=
eer aan 5 willekeurige personen als je deze e-mail ontvangt, dan is je e-ma=
il geselecteerd na een spin-ball. Ik heb vrijwillig besloten om het bedrag =
van $ 10 miljoen USD aan jou te doneren als een van de geselecteerde 5, om =
mijn winst te verifi=EBren
 =

  Vriendelijk antwoord op: mike.weirsky.foundation003@gmail.com
 Voor uw claim.
