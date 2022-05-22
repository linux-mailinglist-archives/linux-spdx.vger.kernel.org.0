Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC93B5303A0
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345848AbiEVOyq (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231316AbiEVOyq (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:46 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7110017A9B
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:45 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231283;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=KX+mkF27ADJSA/kTifuX46V/RyTrsBcws6f+Xb9NBSs=;
        b=FyYMO9o8u+it+1uZIT9kKjFwQIf6vUR97Gn3H9dNW2kOBl8V87CuEPAkskBJjSrSZl+Ol2
        8FVpeV8TKPSoNUZg+5PxkoeSP5hEozTSaKVlbpbBcmzmyjLaadKIEXpLQ4YXNIEK7bqW35
        N57tAifVVo7U5rmR8z1IEzFgL/fG3b0n5ljaNYnFfniR8UhspzkoqyHiAhqeLqTQTCRzAp
        LrroG82HDVbbdYNvlVaLWK4pDpcQBrLPdCgRzyI2ORmfR3xXU9TClOCQcm9p6j0wCiUq4b
        5k37V1fslXkZY2SKxqVuLyb8DZBPcwlJEQaokLqHPwc3AW9M9s5998mMlTq0nQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231283;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=KX+mkF27ADJSA/kTifuX46V/RyTrsBcws6f+Xb9NBSs=;
        b=qFhVHZ+3snDC5nkkSapPeeB/mjgQmuNGZpN+r/D+aNDVs19Xd2cg/6WEQkI1ZMIIzVOT3o
        t2M45HWtUOWSTeCg==
To:     Dave Jones <davej@redhat.com>
Cc:     linux-spdx@vger.kernel.org
Subject: list_debug, pcmcia: License cleanup
Message-ID: <165322121191.3770149.399639028538521068.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:43 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Dave!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored by you.

1) released under the general public license (gpl)

   lib/list_debug.c


2) this code is released under the gnu general public license (gpl) this
   software is provided as is and any express or implied warranties
   including but not limited to the implied warranties of merchantability
   and fitness for a particular purpose are disclaimed in no event shall
   the author be liable for any direct indirect incidental special
   exemplary or consequential damages (including but not limited to
   procurement of substitute goods or services loss of use data or profits
   or business interruption) however caused and on any theory of liability
   whether in contract strict liability or tort (including negligence or
   otherwise) arising in any way out of the use of this software even if
   advised of the possibility of such damage

   drivers/char/pcmcia/synclink_cs.c

     https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/=
?id=3D61e17e546cebe

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas


