Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 657944E6713
	for <lists+linux-spdx@lfdr.de>; Thu, 24 Mar 2022 17:34:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351711AbiCXQfP (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 24 Mar 2022 12:35:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351722AbiCXQfN (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 24 Mar 2022 12:35:13 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AAF922BF5
        for <linux-spdx@vger.kernel.org>; Thu, 24 Mar 2022 09:33:40 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id x34so6250121ede.8
        for <linux-spdx@vger.kernel.org>; Thu, 24 Mar 2022 09:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=CpmeVTNjPk8RQF+wdo8O8+a1dNSGCeEVhuPKHrfT8Hw=;
        b=W4VxZE1lalVd9KG7bCxcAb+RHKlwEX4jpC1gp72sC3Xjbs0f1huKLaam/gJzVVIsgI
         4w2wH0VDchpQy0+lj3Q2DvBP93CXg7YcMliJwrHR9c9Q17+aRQEPyWNE0tiqY8GhZMsZ
         aYC3csm0EDVW/Hg8nxNq2bRljP728TnfvA7G6Yu9ZsAKA1rraI/fvmdhgOrRHNbZYcLx
         +awKC7Tb0sfLqT2Nh7HQcOwc8PmEy4LhHHmbGwVK24yn/9uSMNN1xnxbYqeydYd62En4
         s86oZkljxeYVF8IsJZqN/Agoq5ggEeJrLm3pCQy39ucPU/2VNuuDsvykIorcD+6J68up
         Ly2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=CpmeVTNjPk8RQF+wdo8O8+a1dNSGCeEVhuPKHrfT8Hw=;
        b=OsCwG1Q4dacGMfLNMRPHZoDaFNz8vCldrNBvyW69ysNeKPG2emVthvnnl2d7zEj9kA
         9/UHcka3rWzFrWbSr7Pkc4qBPiUFRyRVlJR2zRpGsytsXHLZ01ME6xcwAM6hA2UFGX0V
         pGfRK6WlGF9A/Az5i4TGfczqv22ykxHgQIuBZYPeElAcjp5bE23sZLx7SwVRNZditkgF
         sYLifIADQpHlItKg83nVNegGpCDOtcmaJIxlK6jPVk0FCaoFqQVA9UudL8p5rhrC2zYW
         Xm61xuifsBQGaNMDt8BctbJXLR+rYZN6797UcmDcplExGEs+7XD5UbLwe4feypgc0lAN
         eHCg==
X-Gm-Message-State: AOAM531ykZc+slkvyQSKr6lcSB+yGT9mxDLApWo6DVOtToqXnlwRg7Wh
        sTz7U4QQNYzxoeM2vpgxHTMnoyopecRB93cb9ys=
X-Google-Smtp-Source: ABdhPJxBBFpZi7I0tJk1tmG2BiIsDa6v4HD0k5PPUYXsJpMqXBtDnov6zf47U8Te/9WbWL/lTGEGsuRZU/KaDLn63c8=
X-Received: by 2002:a05:6402:51d2:b0:419:7d2e:9d0 with SMTP id
 r18-20020a05640251d200b004197d2e09d0mr7697846edd.82.1648139619017; Thu, 24
 Mar 2022 09:33:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:5786:0:0:0:0 with HTTP; Thu, 24 Mar 2022 09:33:38
 -0700 (PDT)
Reply-To: pmaurice837@gmail.com
From:   pmaurice maurice <skougnassoukou2@gmail.com>
Date:   Thu, 24 Mar 2022 16:33:38 +0000
Message-ID: <CAF7+SkQaWU2FjSV4U3rBEFpwpDyfcRcSB8HzeEiMAfrSjiJ3tA@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.1 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:541 listed in]
        [list.dnswl.org]
        * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
        *      [score: 0.2045]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [skougnassoukou2[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [pmaurice837[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [skougnassoukou2[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Please, can we talk?
Something just came up and it's very urgent, please, I need your attention.

regards
Peace of Maurice.
