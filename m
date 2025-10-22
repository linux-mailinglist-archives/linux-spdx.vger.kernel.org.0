Return-Path: <linux-spdx+bounces-98-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C39FBBFAD44
	for <lists+linux-spdx@lfdr.de>; Wed, 22 Oct 2025 10:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 525293B4879
	for <lists+linux-spdx@lfdr.de>; Wed, 22 Oct 2025 08:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B88302173;
	Wed, 22 Oct 2025 08:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=taskera.pl header.i=@taskera.pl header.b="rAdWAU3X"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail.taskera.pl (mail.taskera.pl [51.75.73.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA45038DE1
	for <linux-spdx@vger.kernel.org>; Wed, 22 Oct 2025 08:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.75.73.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761120805; cv=none; b=Ook3Eq507Dqo3hLS8C/iJH54eorixGgrKBUJS0I0yOBlYyMnx9Vdkb6O2gFbXfO9skGB5DXj/uB+PaCigG+l+qyUVgks955DuPupXuFEoQJA61ZWLpyNwMyppkiZFO+SGvavyxHVKvUOBJMauz/UQFOQdhEhrgpdBRKHsYqfU4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761120805; c=relaxed/simple;
	bh=LHmroAf0IX0JOjVUiIwqM4s8ghVxxktECxT6AQD+q2c=;
	h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type; b=PwnwLrJ8DtrF/B9ESL9XS4XDBrUvHbYtPNph1brIuaUc8b8EXF3wknHrPZpk/REarRkgzS46+F3k/2gN+bCB2X+nsCvm+LVvQ0Qrgy4VkJnpVDQpKTihBfwu1x+kAZR92szLC2hoakqXfzCpesImeaVYaO8F1+nRnp/RV7TWc8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=taskera.pl; spf=pass smtp.mailfrom=taskera.pl; dkim=pass (2048-bit key) header.d=taskera.pl header.i=@taskera.pl header.b=rAdWAU3X; arc=none smtp.client-ip=51.75.73.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=taskera.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=taskera.pl
Received: by mail.taskera.pl (Postfix, from userid 1002)
	id 9EC9B25E49; Wed, 22 Oct 2025 10:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=taskera.pl; s=mail;
	t=1761120737; bh=LHmroAf0IX0JOjVUiIwqM4s8ghVxxktECxT6AQD+q2c=;
	h=Date:From:To:Subject:From;
	b=rAdWAU3XYW5HUnFSzjSfhKINJyZS3mYxRxa3rRzaYmpBiFSaVzNXbJNhDlTT+UsCj
	 C1pN1CUhpOMsYsdUNAwr0dfSNmJxBVX2loKAwzojFstQsogIRm47UH48SBueno4wvS
	 5KSys9VM8Z0dzDbdn7V9rL+VjTsWDLC833Iat6dSZFWgg7+6bfm/ZPVDQIwpJ0ZAEK
	 jbrBb6nvaPETYv8BmNkVXSlr6jlM+Qq8yOb84ZdWyz8oWd+N51XmWerM2slNd0IJk0
	 LfU5w9fwgQuh+t1hWIoLcoR4bap9ZmimR4yMuDIN+MY0bXrAU27Coq8oJqQ246G6ui
	 H2ldz5iKnnBQg==
Received: by mail.taskera.pl for <linux-spdx@vger.kernel.org>; Wed, 22 Oct 2025 08:11:10 GMT
Message-ID: <20251022084500-0.1.e0.vvzq.0.w1c86jofmu@taskera.pl>
Date: Wed, 22 Oct 2025 08:11:10 GMT
From: "Eryk Wawrzyn" <eryk.wawrzyn@taskera.pl>
To: <linux-spdx@vger.kernel.org>
Subject: Zwrot
X-Mailer: mail.taskera.pl
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dzie=C5=84 dobry,

kontaktuj=C4=99 si=C4=99 w imieniu kancelarii specjalizuj=C4=85cej si=C4=99=
 w zarz=C4=85dzaniu wierzytelno=C5=9Bciami.

Od lat wspieramy firmy w odzyskiwaniu nale=C5=BCno=C5=9Bci. Prowadzimy ko=
mpleksow=C4=85 obs=C5=82ug=C4=99 na etapach: przeds=C4=85dowym, s=C4=85do=
wym i egzekucyjnym, dostosowuj=C4=85c dzia=C5=82ania do bran=C5=BCy Klien=
ta.

Kiedy mo=C5=BCemy porozmawia=C4=87?


Pozdrawiam
Eryk Wawrzyn

