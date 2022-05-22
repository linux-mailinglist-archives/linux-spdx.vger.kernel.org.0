Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACA575303A6
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347581AbiEVOyz (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347562AbiEVOyz (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:55 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B93117AA7
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:54 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231293;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=HMZIpa/92A4WV4p6lPOg8IdRjKx2NrCxqh+EdA3mP04=;
        b=POh+s68ly7sc8xuDnxA0mtjnLVT9qWC2jlhVjXs4QHF85B/PvnD3XzBavnbEOI+WDhhav9
        Fikekc/7u1JqZ0VUpvtMBR+L5dhS+PfoCM9V1NR5eWPoTT1myFOM8emt8+11BWurgGG6BN
        tvlYt+AjHa0mW606MyJMcsOGan7z20rG6CGgjAS43czVm80pGm77g3Dlka23+WCpj9vCMR
        off5KQr9gVRdwlSFovOtrsnbxkuTBf0sqKUofij7SBAgiJEpzkYB7tfsCcVm8M4oXW1FRu
        264Xswu1rtxyDsWPGyLecNGdDN1pWBhvj6bze31DnfvANrt3Px9UIgr8VBEQLw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231293;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=HMZIpa/92A4WV4p6lPOg8IdRjKx2NrCxqh+EdA3mP04=;
        b=Uqvn1pWlVQxc8bY279KWTd88wH/KPaJloBr54dknznbyFoQ4KplpnMP/stIYlDhO6mfwVC
        9/NGyfUCx8ryh8Dg==
To:     Rusty Russell <rusty@rustcorp.com.au>
Cc:     linux-spdx@vger.kernel.org
Subject: netfilter, cpu, modules: License cleanup
Message-ID: <165322122056.3770149.6049965782379555513.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:52 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rusty!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found the following unspecific GPL license references, which
have been authored by you:

  kernel/cpu.c: * This code is licenced under the GPL.

  include/linux/netfilter_ipv4.h: * (C)1998 Rusty Russell -- This code is GPL.
  include/linux/netfilter_ipv6.h: * (C)1998 Rusty Russell -- This code is GPL.
  net/ipv4/netfilter.c: * Rusty Russell (C) 2000 -- This code is GPL.
  net/ipv6/netfilter.c: * Rusty Russell (C) 2000 -- This code is GPL.
  net/netfilter/nf_queue.c: * Rusty Russell (C)2000 -- This code is GPL.

  net/netfilter/core.c: * This code is GPL.
  net/netfilter/core.c lost your (C) with b3a61254d83d5.

  scripts/mod/modpost.c
  scripts/mod/file2alias.c:
    * This software may be used and distributed according to the terms
    * of the GNU General Public License, incorporated herein by reference.

  include/uapi/linux/netfilter_arp.h: * (C)2002 Rusty Russell IBM -- This cod=
e is GPL.
  include/uapi/linux/netfilter_decnet.h: * (C)1998 Rusty Russell -- This code=
 is GPL.
  include/uapi/linux/netfilter_ipv4.h: * (C)1998 Rusty Russell -- This code i=
s GPL.
  include/uapi/linux/netfilter_ipv6.h: * (C)1998 Rusty Russell -- This code i=
s GPL.

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my cleanup
machinery.

The files in 'include/uapi/' have already SPDX license tags, but it would
be nice to remove the 'This code is GPL.' blurb for clarity.

Thanks,

	Thomas

