Return-Path: <linux-spdx+bounces-12-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B1E9F0A19
	for <lists+linux-spdx@lfdr.de>; Fri, 13 Dec 2024 11:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADACD188052B
	for <lists+linux-spdx@lfdr.de>; Fri, 13 Dec 2024 10:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73AB1C3BF2;
	Fri, 13 Dec 2024 10:52:53 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from arara2.ipen.br (arara2.ipen.br [200.136.52.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988481C07F1
	for <linux-spdx@vger.kernel.org>; Fri, 13 Dec 2024 10:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=200.136.52.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734087173; cv=none; b=czr04e21dZtMdzvbM75xgqSoOodtj6nOVWoVph3Eo/bSs9mpg1g5FClYwu358a8X4nZoeycP6LNIgjzmYbgEy3GUdYql2FdtK8THiWV4J9o6glCo52I9lN2wW1JX4bkqdBcbBOrKzaykaEkerCZWTtfJhEZPCn6SSC8p0tIsDlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734087173; c=relaxed/simple;
	bh=Cgr97JBiSX1QIcd2ZZZsKVChGTY1ZlWJ/4AhaVFA7Wc=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hzB+yjo1WmUteXYU2woH/gtjqKx6xc1AiQ6nYrxyN0DiwcSIsegPYwGMKRLMDOiU+F2pwpVHZN6Z8+II+kx27BfcI6P+SsKSgKR9qh8hB9RREJ2Nef0YiXo8nwZt66Je1r2EIkUb+lsymjnka60ao63CcJJIF6MJ2IDhvqTDUmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ipen.br; spf=pass smtp.mailfrom=ipen.br; arc=none smtp.client-ip=200.136.52.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ipen.br
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ipen.br
X-ASG-Debug-ID: 1734087164-055fc729eb14aded0003-0Hskv2
Received: from arara.ipen.br (webmail.ip.ipen.br [10.0.10.11]) by arara2.ipen.br with ESMTP id twnsrPCIoKfWZKcd for <linux-spdx@vger.kernel.org>; Fri, 13 Dec 2024 07:52:48 -0300 (BRT)
X-Barracuda-Envelope-From: TCWM179521@ipen.br
X-Barracuda-RBL-Trusted-Forwarder: 10.0.10.11
Received: from ipen.br (unknown [102.129.145.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by arara.ipen.br (Postfix) with ESMTPSA id 7EF5AFBE62C
	for <linux-spdx@vger.kernel.org>; Fri, 13 Dec 2024 01:25:43 -0300 (-03)
Reply-To: t.mazowieckie@mazowieckie.org
X-Barracuda-Effective-Source-IP: UNKNOWN[102.129.145.191]
X-Barracuda-Apparent-Source-IP: 102.129.145.191
X-Barracuda-RBL-IP: 102.129.145.191
From: <TCWM179521@ipen.br>
To: linux-spdx@vger.kernel.org
Subject:  I urge you to understand my viewpoint accurately.
Date: 13 Dec 2024 12:25:42 +0800
X-ASG-Orig-Subj: I urge you to understand my viewpoint accurately.
Message-ID: <20241213122542.545007FC94AF7AFE@ipen.br>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Barracuda-Connect: webmail.ip.ipen.br[10.0.10.11]
X-Barracuda-Start-Time: 1734087168
X-Barracuda-URL: https://10.40.40.18:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 512
X-Virus-Scanned: by bsmtpd at ipen.br
X-Barracuda-BRTS-Status: 1
X-Barracuda-BRTS-Evidence: 34fbb5788938ad5710ad28835fd12206-499-txt
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=NO_REAL_NAME
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.45577
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 NO_REAL_NAME           From: does not include a real name

I am Tomasz Chmielewski, a Portfolio Manager and Chartered=20
Financial Analyst affiliated with Iwoca Poland Sp. Z OO in=20
Poland. I have the privilege of working with distinguished=20
investors who are eager to support your company's current=20
initiatives, thereby broadening their investment portfolios. If=20
this proposal aligns with your interests, I invite you to=20
respond, and I will gladly share more information to assist you.

=20
Yours sincerely,=20
Tomasz Chmielewski Warsaw, Mazowieckie,
=20
Poland.

