Return-Path: <linux-spdx+bounces-14-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47018A37E49
	for <lists+linux-spdx@lfdr.de>; Mon, 17 Feb 2025 10:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DE1B16279F
	for <lists+linux-spdx@lfdr.de>; Mon, 17 Feb 2025 09:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDDCC1FF7A5;
	Mon, 17 Feb 2025 09:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dealify.pl header.i=@dealify.pl header.b="NgjcLVXF"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail.dealify.pl (mail.dealify.pl [51.195.90.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA1E1FF7CD
	for <linux-spdx@vger.kernel.org>; Mon, 17 Feb 2025 09:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.195.90.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783938; cv=none; b=AujnQDxhNNWmMUNUm9rf+u4TLEf+dQR5x+7THQSRRwQ3H113eCrgUL6pFrO1guw4gfvaOG/so5+UHEHywl20/fLpjfLbKemjOYYByVFou4t7paXfiACxPjppV/5SCYGAi5hKfSWNg6vGus8u+aQkId1AObszUGIK5b3OIDQtrvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783938; c=relaxed/simple;
	bh=g9kDn5MVT0WH2OEuB7IRmZF3ef4El5ZimOew9H4YK78=;
	h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type; b=FGAy4cVzKDoLNjLYyDeWluvKO/4ePsf05yo9SDfQ9XgBk+ebbpVG23v+bBM22YgxKnmbbV+1607SWG08teVMJnoKBi+ds+jUbVJnKSHrZt7+N6s5wJtb6n2pEdeGofY/9s/nw88No0wYa61CoVAnVsm6+Pcy4cmedFqY6AJbIAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=dealify.pl; spf=pass smtp.mailfrom=dealify.pl; dkim=pass (2048-bit key) header.d=dealify.pl header.i=@dealify.pl header.b=NgjcLVXF; arc=none smtp.client-ip=51.195.90.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=dealify.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dealify.pl
Received: by mail.dealify.pl (Postfix, from userid 1002)
	id F2E36A46B4; Mon, 17 Feb 2025 10:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dealify.pl; s=mail;
	t=1739783493; bh=g9kDn5MVT0WH2OEuB7IRmZF3ef4El5ZimOew9H4YK78=;
	h=Date:From:To:Subject:From;
	b=NgjcLVXFEgsxRBtoGsFFryOuutRK6T41iuAF7yp0SfGwlbVzL7AohW0V9ATDd8Pb+
	 6ozpEZCDkZVKZ25/bmbT7fp9KkHLSWXyRfn0Z6GTFikpyeVGm4m7YRDPlIb3E+VVz6
	 VJBY54TrddHtTtDM50Ga9HY5tcmuSaOIEdY9QsuiIKT7DGw7HK4m5HP3bpna4d57yT
	 ZBv7sKc+BYFkI384kpZvdtMPx1FHP0bjE8DWxS0ocqPtuDCieqT9V1J3Cr+NlTXnhh
	 Ht7iPmkw6bcW9vLHyqc8zm4YVos4xyYxQMDhV8Ubi8eRE1Kt1j3A9ClPQfqtBYu/U0
	 Miu/Mps8pcdvA==
Received: by mail.dealify.pl for <linux-spdx@vger.kernel.org>; Mon, 17 Feb 2025 09:11:00 GMT
Message-ID: <20250217084500-0.1.jw.242x3.0.2bg9g36j4h@dealify.pl>
Date: Mon, 17 Feb 2025 09:11:00 GMT
From: "Weronika Kubiak" <weronika.kubiak@dealify.pl>
To: <linux-spdx@vger.kernel.org>
Subject: Pomoc prawnika
X-Mailer: mail.dealify.pl
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Szanowni Pa=C5=84stwo,

rozumiej=C4=85c dynamik=C4=99 dzisiejszego rynku i zwi=C4=85zane z ni=C4=85=
 zagro=C5=BCenia, ochrona maj=C4=85tku firmy sta=C5=82a si=C4=99 kluczowy=
m elementem strategii zarz=C4=85dzania ryzykiem.=20

Nasza kompleksowa us=C5=82uga zosta=C5=82a zaprojektowana z my=C5=9Bl=C4=85=
 o przedsi=C4=99biorstwach, kt=C3=B3re ceni=C4=85 sobie wielowarstwowe po=
dej=C5=9Bcie do zabezpieczenia swoich aktyw=C3=B3w.

Oferujemy rozwi=C4=85zania wykraczaj=C4=85ce poza standardowe metody ochr=
ony, =C5=82=C4=85cz=C4=85c zaawansowane narz=C4=99dzia analityczne, prawn=
e i technologiczne.=20

Czy chcieliby Pa=C5=84stwo szczeg=C3=B3=C5=82owo om=C3=B3wi=C4=87 mo=C5=BC=
liwo=C5=9Bci zabezpieczenia Pa=C5=84stwa maj=C4=85tku?


Pozdrawiam
Weronika Kubiak

