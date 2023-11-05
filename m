Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EEBD7E1745
	for <lists+linux-spdx@lfdr.de>; Sun,  5 Nov 2023 23:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbjKEWBe (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 5 Nov 2023 17:01:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbjKEWBd (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 5 Nov 2023 17:01:33 -0500
X-Greylist: delayed 5264 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 05 Nov 2023 14:01:30 PST
Received: from SMTP-HCRC-200.brggroup.vn (unknown [42.112.212.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DEBCF
        for <linux-spdx@vger.kernel.org>; Sun,  5 Nov 2023 14:01:30 -0800 (PST)
Received: from SMTP-HCRC-200.brggroup.vn (localhost [127.0.0.1])
        by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTP id 782761960A;
        Mon,  6 Nov 2023 01:58:07 +0700 (+07)
Received: from zimbra.hcrc.vn (unknown [192.168.200.66])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTPS id 71DDB171E7;
        Mon,  6 Nov 2023 01:58:07 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.hcrc.vn (Postfix) with ESMTP id 080A91B8253E;
        Mon,  6 Nov 2023 01:58:09 +0700 (+07)
Received: from zimbra.hcrc.vn ([127.0.0.1])
        by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id HYVxlCFahJe6; Mon,  6 Nov 2023 01:58:08 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.hcrc.vn (Postfix) with ESMTP id C1CB91B8252B;
        Mon,  6 Nov 2023 01:58:08 +0700 (+07)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra.hcrc.vn C1CB91B8252B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hcrc.vn;
        s=64D43D38-C7D6-11ED-8EFE-0027945F1BFA; t=1699210688;
        bh=WOZURJ77pkiMUL2pPLC14ifVPRvyTQIBEQmxuN1ezAA=;
        h=MIME-Version:To:From:Date:Message-Id;
        b=qidzvo3DcXEskoGaYTw2t4gk00p+yX/lXn99ar2PYYwXKmRKe/SGJpDepAvPLtRYK
         S33km61nxbZZ4cGF+QfiSCfC2sI28X5sSRh7DS5Kg3DbAK303qOpuT/ICmcfDTK1vU
         3vJgGpjstr/0gorNuuyUVjjlr9NXK5wawAEQjqx/aMEk3ExRWMRivmZGj9g4mvG86/
         9SZR3EQ59E+I1b0u3P/w50696KD+G7beAmzj2nGUttyLFY/wuXBp9wSQKaxKABIIzQ
         1koYo5vD4YofIivxpXNskqqPw6THe/i0g0goX/rFg9grnEbR9JOxXoFsLPm4HKHEbI
         lkXbUAEjKMOkg==
X-Virus-Scanned: amavisd-new at hcrc.vn
Received: from zimbra.hcrc.vn ([127.0.0.1])
        by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 6NsGnCuWe8Zr; Mon,  6 Nov 2023 01:58:08 +0700 (+07)
Received: from [192.168.1.152] (unknown [51.179.100.52])
        by zimbra.hcrc.vn (Postfix) with ESMTPSA id 746B91B8253E;
        Mon,  6 Nov 2023 01:58:02 +0700 (+07)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDEwMC4wMDAuMDAwPw==?=
To:     Recipients <ch.31hamnghi@hcrc.vn>
From:   ch.31hamnghi@hcrc.vn
Date:   Sun, 05 Nov 2023 19:57:49 +0100
Reply-To: joliushk@gmail.com
Message-Id: <20231105185802.746B91B8253E@zimbra.hcrc.vn>
X-Spam-Status: No, score=2.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_REPLYTO,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Goededag,
Ik ben mevrouw Joanna Liu en een medewerker van Citi Bank Hong Kong.
Kan ik =E2=82=AC 100.000.000 aan u overmaken? Kan ik je vertrouwen


Ik wacht op jullie reacties
Met vriendelijke groeten
mevrouw Joanna Liu

