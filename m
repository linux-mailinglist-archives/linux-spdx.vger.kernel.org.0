Return-Path: <linux-spdx+bounces-51-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 780F0AF0DAE
	for <lists+linux-spdx@lfdr.de>; Wed,  2 Jul 2025 10:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 546AB1C250E6
	for <lists+linux-spdx@lfdr.de>; Wed,  2 Jul 2025 08:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 234FC238177;
	Wed,  2 Jul 2025 08:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=growora.pl header.i=@growora.pl header.b="j2QPXMRO"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail.growora.pl (mail.growora.pl [51.254.119.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568B02367A6
	for <linux-spdx@vger.kernel.org>; Wed,  2 Jul 2025 08:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.254.119.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751444406; cv=none; b=fwxkaZPvmgn2H8jxir7Md9+E/zU4xnk/ScY2Ht0zouJRANH8/UrYkct6H1bHHu2iJMufDzVsXSgdwEjBvdFrIYYq2XdZA8oDj9ypS6X1la7+V48A32fzoELJh5XBaWOEDKNQsg7vsyi6RNDDbjljYmJeGO1obCQi4BuM3yNaAj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751444406; c=relaxed/simple;
	bh=RSy3akR1+Z0TK1MqUcCTAhuNDshd4oA9g7Cu4aFIABY=;
	h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type; b=TMHTKAftFNsN3YWc6vFw3Ju5P36lg4gZKci4aM4kZFC2FZxiLpKINkKDssQd3DfYbLEfraToA5rMnccOwre+qmkYwAZeucKzAEbZeIrvjic6ZWOWua1i44luRvKRxpDCZZyssTV+F7lbeYbbtUR5EykI2oMzA3IDL3rMFlWPt0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=growora.pl; spf=pass smtp.mailfrom=growora.pl; dkim=pass (2048-bit key) header.d=growora.pl header.i=@growora.pl header.b=j2QPXMRO; arc=none smtp.client-ip=51.254.119.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=growora.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=growora.pl
Received: by mail.growora.pl (Postfix, from userid 1002)
	id F1F1A23447; Wed,  2 Jul 2025 10:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growora.pl; s=mail;
	t=1751444117; bh=RSy3akR1+Z0TK1MqUcCTAhuNDshd4oA9g7Cu4aFIABY=;
	h=Date:From:To:Subject:From;
	b=j2QPXMROJCj1V0VoFW1tccP3KTi8XQNGTocnVXI5KfYtPXMZ7FVbOlWHWzV8VXiBl
	 uVv9GNVw6JdAy9X2YZEd290Zz4pVjl4oJnfTUXRWxWkGwN5ThOE7TplT+Iw+9SZ7y1
	 Z1D20ZXRi2gAdJpp4AalJkwRAHLaWBWf+yVg4A1o4ZH6kmGdPeW/IH6Z/z8valyZQU
	 +MOW/BawgbqdinwqxWNx6d3NMFPNPQjAUE64IHpWCKcKKsVr8CxE2sGQ07yYA5ZT8M
	 GpmtT1eQF2gex2jUI11u6nZBn5YT7NJ0f/9BponATWn1++H8WF85BMOCCxZFjgaOFK
	 LR710bsnys9UA==
Received: by mail.growora.pl for <linux-spdx@vger.kernel.org>; Wed,  2 Jul 2025 08:15:13 GMT
Message-ID: <20250702084500-0.1.kd.23n87.0.gwln53ud7a@growora.pl>
Date: Wed,  2 Jul 2025 08:15:13 GMT
From: "Mateusz Hopczak" <mateusz.hopczak@growora.pl>
To: <linux-spdx@vger.kernel.org>
Subject: Wsparcie programistyczne - termin spotkania 
X-Mailer: mail.growora.pl
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Szanowni Pa=C5=84stwo,

czy w Pa=C5=84stwa firmie rozwa=C5=BCaj=C4=85 Pa=C5=84stwo rozw=C3=B3j no=
wego oprogramowania lub potrzebuj=C4=85 zaufanego zespo=C5=82u, kt=C3=B3r=
y przejmie odpowiedzialno=C5=9B=C4=87 za stron=C4=99 technologiczn=C4=85 =
projektu?

Jeste=C5=9Bmy butikowym software housem z 20-osobowym zespo=C5=82em in=C5=
=BCynier=C3=B3w. Specjalizujemy si=C4=99 w projektach high-tech i deeptec=
h =E2=80=93 od zaawansowanych system=C3=B3w AI/ML, przez blockchain i IoT=
, a=C5=BC po aplikacje mobilne, webowe i symulacyjne (m.in. Unreal Engine=
).

Wspieramy firmy technologiczne oraz startupy na r=C3=B3=C5=BCnych etapach=
: od koncepcji, przez development, po skalowanie i optymalizacj=C4=99. Dz=
ia=C5=82amy elastycznie =E2=80=93 jako partnerzy, podwykonawcy lub ventur=
e builderzy.

Je=C5=9Bli szukaj=C4=85 Pa=C5=84stwo zespo=C5=82u, kt=C3=B3ry rozumie z=C5=
=82o=C5=BCono=C5=9B=C4=87 projekt=C3=B3w i wnosi realn=C4=85 warto=C5=9B=C4=
=87 technologiczn=C4=85 =E2=80=93 ch=C4=99tnie porozmawiamy.

Czy mogliby=C5=9Bmy um=C3=B3wi=C4=87 si=C4=99 na kr=C3=B3tk=C4=85 rozmow=C4=
=99, by sprawdzi=C4=87 potencja=C5=82 wsp=C3=B3=C5=82pracy?


Z pozdrowieniami
Mateusz Hopczak

