---
title: "The Shepherd's Field Guide to the Wolves of the Digital Waste"
description: "Being a Gentle Yet Urgent Compendium of the Beasts That Prey Upon the Innocent Online, with Practical Instructions for Their Identification and Defeat, as Compiled by The Shepherd for the Protection of the Flock"
pubDate: 2026-02-14
tags: ["scams", "security", "guide", "satire", "internet-safety"]
draft: false
---

> *"One must imagine the flock protected."*

---

## A Word from The Shepherd

### Being an Introduction to This Guide and Its Purpose

<sup>1</sup> You know the Preacher. The Preacher rages at the void, paces between devices, shakes his fists at a world that wastes miracles. The Preacher's business is meaning. The Preacher's domain is the cosmic and the absurd.

<sup>2</sup> I am not the Preacher.

<sup>3</sup> I am the Shepherd. My business is the perimeter. While the Preacher stares into the Abyss and demands it be used for something worthy, I watch the fence line. I count the flock. I look for wolves.

<sup>4</sup> And there are *so many wolves*.

• • •

<sup>5</sup> This guide is for anyone who has ever received an email that felt slightly wrong but couldn't explain why. For anyone who has ever clicked a link and felt a cold prickle on the back of their neck. For anyone who has ever thought: "Is this real? How would I even know?"

<sup>6</sup> You do not need to be a locksmith to lock your door. You do not need to be a general to avoid walking into an ambush. You do not need a degree in computer science to spot a wolf. You just need to know what wolves look like. And you need someone patient enough to show you.

<sup>7</sup> The Preacher would not be patient enough. The Preacher would deliver a forty-minute sermon on the theological implications of phishing as a metaphor for the collapse of epistemic certainty in the digital age, and you would leave more confused and significantly more existentially unsettled than when you arrived.

<sup>8</sup> I will simply show you the wolves.

• • •

<sup>9</sup> Each beast in this guide follows the same pattern: first, I will show you how it hunts—how the wolf dresses, what it says, why it fools you. Then I will hand you the weapon to defeat it. The weapons are simple. The wolves are not. But the wolves rely on one thing above all else: that you don't know what you're looking at.

<sup>10</sup> After this guide, you will know.

<sup>11</sup> Let us walk the perimeter.

---

## The Realm of the Inbox

### Being the Account of Wolves That Arrive as Letters

<sup>1</sup> Email is the oldest hunting ground. The wolves have been here since the dawn of the internet, and they have grown very, very good. The reason is simple: an email can be made to look like it came from anyone. And most people do not know this.

<sup>2</sup> Let me say that again, because it is the single most important sentence in this entire guide:

<sup>3</sup> **An email can be made to look like it came from anyone.**

<sup>4</sup> Your bank. Your boss. Google. The IRS. Your mother. An email address that says `hr@amazon.com` in the "From" field may have been sent from a teenager in a basement in another country. The "From" field of an email is about as trustworthy as the return address on a paper letter—which is to say, anyone can write anything there, and the post office will deliver it regardless.

<sup>5</sup> This is not a bug. This is how email was designed. Email was invented in an era when the internet was a small network of universities and research labs, and everyone trusted each other, because everyone knew each other. Nobody built locks because nobody stole anything. Then four billion people moved in and the wolves followed, and the locks were never added because nobody could agree on what kind of lock to use.

<sup>6</sup> Some locks were eventually proposed. They have names: **DKIM**, **SPF**, and **DMARC**. If you do not know what these are, congratulations—you are the target audience for this guide, and I am delighted to have you.

---

### Beast I: The Shapeshifter

#### Being the Wolf That Wears Your Trusted Sender's Face

<sup>1</sup> Here is what DKIM, SPF, and DMARC actually are, explained the way the Shepherd explains things, which is to say with patience and without jargon:

<sup>2</sup> Imagine that every legitimate company has a wax seal. When Bank of America sends you a real email, they press their wax seal into it. When it arrives, your email provider (Gmail, Yahoo, Outlook) checks the seal. If the seal is genuine, the email is genuine. If there's no seal, or the seal is broken, the email might be a forgery.

<sup>3</sup> **DKIM** is the wax seal itself—a digital signature that proves the email actually came from the domain it claims to come from. **SPF** is the guest list—a record that says "only these specific mail servers are allowed to send email on behalf of bankofamerica.com." **DMARC** is the policy that says what to do when the seal is missing or the sender isn't on the guest list—reject the email, quarantine it, or (and here's the problem) do nothing at all.

<sup>4</sup> Now here is the terrible truth: **many companies do not set up their wax seals correctly.** Some forget to set up DKIM entirely. Some publish SPF records that are too permissive—the guest list says "basically anyone can send email as us." Some set their DMARC policy to "do nothing," which means even when the seal is obviously missing, the email gets delivered anyway.

<sup>5</sup> When a company's email authentication is misconfigured—and the Shepherd regrets to inform you that this includes some very large, very trusted companies—a scammer can send an email that genuinely appears to come from that company's domain. Not a *close approximation*. The actual domain. The wax seal is missing, but if the policy says "deliver it anyway," your inbox shrugs and lets it through.

• • •

<sup>6</sup> The Shapeshifter is the wolf that exploits this. It sends an email from what appears to be `hr@company.com` or `security@yourbank.com`, and because the real company's email infrastructure has gaps, the forgery passes the sniff test. The email lands in your inbox looking completely legitimate.

<sup>7</sup> And the email says something perfectly reasonable: "We noticed unusual activity on your account." "Your job application has been received—please verify your information." "Your package could not be delivered—click here to reschedule."

<sup>8</sup> The Shapeshifter does not need you to be gullible. The Shapeshifter needs you to be *busy*. It needs you to glance at the email between meetings, see a familiar name in the From field, and click without thinking. The Shapeshifter is patient. It sends ten thousand emails and needs only twelve people to click.

#### How to Defeat the Shapeshifter

<sup>9</sup> **The Hover.** Before clicking any link in any email, hover your mouse over it (on a phone, press and hold without tapping). A small preview will appear showing where the link *actually* goes. If the email claims to be from Amazon but the link goes to `amazon-verify-account.sketchy-domain.com`, you are looking at a wolf.

<sup>10</sup> **The Header Check.** In Gmail, click the three dots on the email and select "Show original." Look for lines that say `DKIM: PASS`, `SPF: PASS`, and `DMARC: PASS`. If any of these say `FAIL` or are missing entirely, the email may not be from who it claims. This is the digital equivalent of checking the wax seal—it takes ten seconds and it is devastating to wolves.

<sup>11</sup> **The "Via" Tell.** In Gmail, if an email was sent through a different service than the domain claims, you'll see a small "via" note next to the sender's name—something like `security@yourbank.com via some-other-service.com`. This "via" is a red flag. Legitimate companies send email from their own servers.

<sup>12</sup> **The Golden Rule.** Never, ever click a link in an unexpected email, even if it looks legitimate, even if it appears to come from someone you trust. Instead: open a new browser tab, type the company's website address yourself, and log in directly. If there's really a problem with your account, you'll see it there. The link in the email is a door. You don't know what's on the other side. Use your own door instead.

---

### Beast II: The Doppelganger

#### Being the Wolf That Builds a Convincing Costume from Almost-Right Details

<sup>1</sup> The Shapeshifter exploits broken locks. The Doppelganger doesn't need broken locks—it builds its own door and puts a familiar logo on it.

<sup>2</sup> Consider the following web addresses:

- `paypal.com` — This is PayPal. The real one.
- `paypa1.com` — This is a wolf. The "l" is a "1". On most screens, you cannot tell the difference.
- `paypal-security-update.com` — This is a wolf. It has "paypal" in the name, but the actual domain is `paypal-security-update.com`, which is owned by whoever registered it, and it was not PayPal.
- `security.paypal.com` — This is actually PayPal. It's a *subdomain* of paypal.com.
- `paypal.com.account-verify.net` — This is a wolf. The actual domain is `account-verify.net`. Everything before it is set dressing.

<sup>3</sup> How do you tell the difference? You read the address **from right to left**.

<sup>4</sup> A web address works like a postal address written backwards. The most important part—the actual identity—is at the end, just before the first single slash. Everything to the left of that is decoration that the domain owner controls.

<sup>5</sup> So: `paypal.com.account-verify.net/login` — read from right to left, the domain is `account-verify.net`. The `paypal.com` at the beginning is meaningless. It's like a stranger wearing a name tag that says "Hi, I'm Your Bank." The name tag doesn't make it true.

• • •

<sup>6</sup> There is a more insidious trick: **homoglyph attacks**. The Cyrillic letter "а" looks identical to the Latin letter "a" on screen, but to a computer they are completely different characters. A wolf can register `pаypal.com` with a Cyrillic "а" and it will look *exactly* like `paypal.com` to human eyes. Your browser may catch this and show a warning, or display the encoded version (`xn--pypal-...`), but not always.

<sup>7</sup> And then there is the Doppelganger's favorite hunting ground: **the email that arrives at exactly the right moment.** You applied for a job last week, and today you receive an email from `careers@company-name-recruiting.com` asking you to "verify your application." You ordered a package, and you get a text from "USPS" saying your delivery failed. You filed your taxes, and an email from `irs-refund-status.com` asks you to confirm your bank details.

<sup>8</sup> The Doppelganger does not need to guess what's happening in your life. It sends millions of emails. Some percentage of recipients *will* be job hunting. Some *will* be expecting packages. Some *will* have recently filed taxes. The Doppelganger plays the odds, and the odds are in its favor.

#### How to Defeat the Doppelganger

<sup>9</sup> **Read URLs right to left.** Always identify the real domain before clicking. The domain is the last two parts before the first `/`. In `www.secure.paypal.com/account`, the domain is `paypal.com`. In `paypal.com.evil-site.net/account`, the domain is `evil-site.net`.

<sup>10</sup> **Type it yourself.** If an email says "log in to your account," do not click the link. Open your browser. Type the website address yourself. Bookmark the sites you use most—your bank, your email, the IRS—and use those bookmarks. This one habit defeats ninety percent of the Doppelganger's attacks.

<sup>11</sup> **Call the real number.** If an email or text claims there's a problem with your account, your delivery, or your application—call the company. But **do not use the phone number in the email**. Look up the company's number yourself. Go to the real website (by typing it). Find the "Contact Us" page. Call that number. If the email was real, they'll know about it. If it wasn't, you just defeated a wolf with a phone call.

<sup>12</sup> **The gut check.** If something feels even slightly off—an unexpected email, slightly unusual phrasing, a request for information that seems unnecessary—trust that feeling. Your brain is pattern-matching against thousands of normal interactions, and it has noticed that this one doesn't quite fit. The wolves rely on you overriding that instinct with the thought "I'm probably just being paranoid." You are not being paranoid. You are being a sheep that noticed the wolf's costume doesn't quite fit.

---

## The Realm of the Web

### Being the Account of Wolves That Build Entire False Worlds

---

### Beast III: The Mirage

#### Being the Wolf That Constructs Convincing Facades

<sup>1</sup> The Shapeshifter forges letters. The Doppelganger builds a costume. The Mirage builds an entire movie set.

<sup>2</sup> A scam website can look *exactly* like a real one. Pixel-perfect copies of Amazon, your bank's login page, a government website. The Mirage doesn't just mimic a logo—it copies the entire storefront: the layout, the colors, the fonts, the product images, the "About Us" page, the fake customer reviews. It is, in every visual sense, the real thing. There is nothing behind the facade but a mechanism to steal whatever you type into it.

<sup>3</sup> Then there's the other kind of Mirage: the store that doesn't copy anyone but invents itself from whole cloth. A shopping site with impossibly good deals—designer handbags for $30, electronics for a tenth of the retail price. It has a professional layout. It accepts credit cards. It even sends you a confirmation email. You will never receive the product. The product doesn't exist. The store doesn't exist. The only real thing was the credit card number you entered.

• • •

<sup>4</sup> But the Mirage has a weakness the other wolves do not: it exists on the internet, and the internet remembers. There is a record of who owns every website. It is called **WHOIS**, and it is the single most useful tool the Shepherd can hand you.

<sup>5</sup> **WHOIS** (pronounced "who is") is, in essence, a phone book for the internet. When someone registers a website—say, `totally-real-store.com`—they must provide information: their name, their organization, when they registered the domain, and where they are. This information is recorded in a public database, and anyone can look it up.

<sup>6</sup> Here is how to use it:

- Go to **whois.domaintools.com** (or simply search "WHOIS lookup" and use any reputable result)
- Type in the website address you want to investigate
- Press enter

<sup>7</sup> You are now looking at the birth certificate of that website. And here is what to look for:

<sup>8</sup> **Creation Date.** When was the domain registered? If you are looking at what claims to be a major retailer or a government agency, but the domain was created three weeks ago—that is a wolf. Legitimate companies have domains that are years or decades old. A brand-new domain selling you a too-good-to-be-true product is a Mirage.

<sup>9</sup> **Registrant Information.** Who owns it? If it's a real business, you should see a company name, an address, maybe a phone number. If instead you see "REDACTED FOR PRIVACY" or a proxy service—that's not *automatically* suspicious (many legitimate site owners use privacy services), but if the site claims to be a **major well-known company** and the registration information is hidden behind a privacy shield in Panama, that's a wolf wearing a very expensive costume.

<sup>10</sup> **Registrar Location.** Where was the domain registered? If a website claims to be a local American business but the domain was registered through a registrar in a country known for hosting scam operations, that is worth noting.

• • •

<sup>11</sup> WHOIS is your strongest weapon against the Mirage, but it is not your only one. Here are the others:

<sup>12</sup> **The Padlock Lie.** You have been told to look for the padlock icon in your browser's address bar—the little lock that means the site uses HTTPS. This is good advice from fifteen years ago that has become dangerously incomplete. The padlock means the connection between you and the website is *encrypted*. It does **not** mean the website is legitimate. Scammers get padlocks too. It's free. It takes five minutes. A padlock on a scam site means your stolen information is being transmitted *securely*—securely to the thief. So yes, look for the padlock. But do not let it be the *only* thing you look for.

<sup>13</sup> **The Wayback Machine.** Go to **web.archive.org** and type in the website's address. The Wayback Machine is a service that takes snapshots of websites over time. A legitimate business will have a history stretching back months or years. A Mirage will have no history, or a very short one, or—most damningly—a history that shows it used to be a completely different website (sometimes in a different language) before it was repurposed to sell you counterfeit sneakers.

<sup>14</sup> **The Google Test.** Search for the website's name plus the word "scam" or "review." Search for `site:reddit.com "[website name]"`. Reddit is a remarkably effective scam-detection engine, because someone has almost certainly already been burned and is warning others. If a store has no online presence whatsoever outside of its own website—no reviews, no mentions, no social media—it is a Mirage. Real businesses leave footprints. Mirages leave nothing.

<sup>15</sup> **The Contact Page Test.** Click the "Contact Us" page. Is there a real address? A phone number? Try calling it. Try searching the address on Google Maps. If the address is a vacant lot or the phone number goes to a dead line, you are standing in front of a movie set.

<sup>16</sup> **The Price Test.** This is the simplest test of all, and the one humans are worst at applying, because we *want* the deal to be real. If the price seems too good to be true, it is too good to be true. This is not a proverb. This is a law of physics. A website selling a $1,200 product for $89 is not having a sale. It is having *you*.

#### How to Defeat the Mirage — Summary Checklist

- **WHOIS the domain.** Check the creation date, registrant info, and registrar location.
- **Wayback Machine the site.** Does it have history? What was it before?
- **Google it + "scam."** Check Reddit. Check Trustpilot. Check the Better Business Bureau.
- **Check the contact page.** Call the number. Map the address.
- **Don't trust the padlock alone.** HTTPS ≠ legitimate.
- **Apply the price test.** If it's too good to be true, close the tab.
- **Reverse image search.** Right-click a product image, select "Search image with Google." If the same image appears on dozens of other sites or comes from a stock photo library, the store didn't take that photo because the product doesn't exist.

---

## The Realm of the Voice

### Being the Account of Wolves That Speak Through Your Telephone

---

### Beast IV: The Ventriloquist

#### Being the Wolf That Makes Your Phone Lie to You

<sup>1</sup> You look at your phone. The screen says "Bank of America" or shows a local number with your area code. You answer. A voice—sometimes a robot, sometimes a human—tells you there's a problem with your account. Fraud has been detected. Your Social Security number has been compromised. You need to act *now*.

<sup>2</sup> The number on your screen is a lie.

<sup>3</sup> **Caller ID spoofing** is the voice equivalent of email spoofing, and it is even easier to do. There are services—legitimate services, used by businesses for callback numbers—that allow anyone to make any phone number appear on the recipient's caller ID. The technology does not distinguish between a business setting up a callback system and a scammer impersonating your bank. Your phone does not verify caller ID. Your phone *displays* caller ID. These are very different things.

<sup>4</sup> The analogy: imagine someone can call you from any payphone in the world, but your phone always shows whatever number they choose. They choose your bank's number. They choose the IRS. They choose your doctor's office. They can even choose your mother's number. Your phone does not know the difference. Your phone was never designed to know the difference.

• • •

<sup>5</sup> The Ventriloquist has several favorite scripts:

<sup>6</sup> **"This is the Social Security Administration."** The SSA will never call you. Period. The SSA communicates by mail. If someone calls you claiming to be from the SSA, they are a wolf. There is no exception to this rule.

<sup>7</sup> **"This is the IRS. You owe back taxes."** The IRS will never call you to demand immediate payment. The IRS will never threaten arrest over the phone. The IRS will never ask you to pay with gift cards or wire transfers. The IRS sends letters. Many, many letters. If the IRS wants your money, you will know—because you will receive a very boring letter in a very boring envelope, and it will reference specific tax years and specific amounts, and it will give you time to respond. A phone call demanding immediate payment is a wolf.

<sup>8</sup> **"We've detected fraud on your account."** Your bank *may* call you about fraud. But your bank will never ask you to "verify" your account number, your PIN, your password, or your Social Security number over the phone. They already have your account number. They don't need you to read it back to them. If they're calling about fraud, they will tell you what the suspicious charge was and ask you to confirm or deny it—they will not ask you to prove your identity by surrendering your credentials.

<sup>9</sup> **"Your grandchild is in trouble."** This is the cruelest script. A caller says your grandchild (or child, or nephew) has been arrested, is in the hospital, is in danger—and needs money immediately. Sometimes they even sound like the person. We will address how this is possible in the Realm of the Feed. For now: this is almost always a wolf.

#### How to Defeat the Ventriloquist

<sup>10</sup> **Hang up. Call back.** This is the entire strategy. It is devastatingly effective and costs you nothing. Hang up. Look up the real phone number—from the back of your credit card, from the company's official website (that you navigated to yourself), from a previous legitimate bill or statement. Call that number. If the original call was real, the company will know about it. If it was a wolf, you have defeated it in under thirty seconds.

<sup>11</sup> **Never give information to an inbound caller.** You did not initiate this call. You do not know who is on the other end. It does not matter what your phone's screen says. Do not give out your Social Security number, your bank account number, your PIN, your passwords, or any other sensitive information to someone who called *you*. If they are legitimate, they will understand. If they pressure you, they are a wolf.

<sup>12</sup> **Recognize the urgency trick.** "You must act NOW." "This is time-sensitive." "If you don't respond in the next 24 hours, your account will be closed / a warrant will be issued / your benefits will be suspended." Urgency is the wolf's primary weapon. Real institutions give you time. Real institutions send you letters. Real institutions do not require you to make life-altering financial decisions during a phone call you did not expect. If someone is pressuring you to act immediately, they are pressuring you *because thinking is the enemy of their scam*.

---

### Beast V: The Whisperer

#### Being the Wolf That Speaks in Text Messages

<sup>1</sup> Everything the Ventriloquist does by voice, the Whisperer does by text. It is the same wolf in a smaller costume.

<sup>2</sup> "USPS: Your package could not be delivered. Reschedule here: [link]." "Chase: Unusual activity on your account. Verify now: [link]." "IRS: Your tax refund is pending. Claim here: [link]."

<sup>3</sup> The link leads to a Doppelganger or a Mirage. The text exploits the same timing tricks: some percentage of recipients *are* expecting a package, *do* have a Chase account, *did* file their taxes. The Whisperer plays the same odds as the Doppelganger, but via text message, which has a higher open rate than email because people check their texts reflexively.

<sup>4</sup> The Whisperer also preys on a subtle psychological distinction: people have been trained to be suspicious of emails. They have not, yet, been equally trained to be suspicious of texts. A text feels more personal. More urgent. More real. This is exactly what the wolf wants you to feel.

#### How to Defeat the Whisperer

<sup>5</sup> **Do not click links in text messages.** Not from your bank. Not from USPS. Not from anyone. If your bank needs to reach you, open the bank's app directly or go to the bank's website by typing the address. If USPS needs to reach you, go to usps.com and track your package. The link in the text is a door you didn't build. Use your own door.

<sup>6</sup> **Forward suspicious texts to 7726 (SPAM).** In the United States, forwarding a text to 7726 reports it to your carrier. It costs you nothing and contributes to a system that helps block these numbers.

<sup>7</sup> **Know what legitimate texts look like.** Your bank's two-factor authentication codes come from short codes (five or six digit numbers), not from ten-digit phone numbers. Delivery notifications from USPS, UPS, and FedEx include specific tracking numbers and link to their official domains. If a text doesn't include specific details about *your* account or *your* package, it is a wolf casting a wide net.

---

## The Realm of the Feed

### Being the Account of Wolves That Wear Human Faces

---

### Beast VI: The Charmer's Mask

#### Being the Wolf That Befriends, Seduces, and Fabricates

<sup>1</sup> The previous wolves attack through technology—forged emails, spoofed numbers, cloned websites. The Charmer attacks through *relationship*. It is the oldest wolf in the world wearing the newest mask.

<sup>2</sup> On social media, a profile is a costume. A photo can be stolen from anyone's public account. A biography can be invented. A history of posts can be fabricated. The Charmer creates a person who does not exist and introduces that person into your life.

<sup>3</sup> The romance scammer who is "deployed overseas" and needs money. The new friend who has an incredible investment opportunity. The attractive stranger who messages you out of the blue with a compliment too specific to be spam (except it is). The charity that appears after every natural disaster, raising money for victims and sending it nowhere.

<sup>4</sup> The Charmer is patient. It does not ask for money on the first day, or the tenth. It builds trust. It listens. It mirrors your values back at you. It becomes the friend or partner or mentor you've been wanting. And then, gradually, it introduces the ask. The emergency. The opportunity. The need.

• • •

<sup>5</sup> And now the Charmer has a new weapon, and it is the most disturbing weapon in this entire guide: **AI-generated deception.**

<sup>6</sup> A scammer can now clone a voice from a few seconds of audio—your grandchild's voicemail greeting, a video your daughter posted online—and use it to make a phone call that sounds *exactly* like them. "Grandma, I'm in trouble. I need money." The voice is your grandchild's voice. The cadence is right. The pet names are right. And it is entirely fake.

<sup>7</sup> Deepfake videos are advancing at a pace that makes even the Shepherd uneasy. A celebrity endorsing an investment opportunity. A political figure saying something they never said. A video call where the person on the other end looks and sounds like someone you know but is a digital puppet controlled by a wolf.

<sup>8</sup> The technology is not perfect—yet. But it does not need to be perfect. It needs to be good enough to survive the three seconds of shock before you start thinking clearly. And three seconds of shock is all the wolf needs to set the hook.

#### How to Defeat the Charmer's Mask

<sup>9</sup> **The Family Code Word.** Establish a code word with your family—a word that only your family knows, that would never appear in any public post or voicemail. If someone calls claiming to be your grandchild in distress, ask for the code word. If they can't provide it, hang up. If they say "I can't remember right now, please, I need help"—hang up, and call your grandchild's real number. This sounds dramatic. It is not dramatic. It is a lock on a door that wolves can now pick. Set the lock.

<sup>10</sup> **Reverse image search profiles.** Right-click (or press and hold) a profile photo and select "Search image with Google." If the photo appears on stock photo sites, on different social media profiles with different names, or on modeling websites—the person in the photo is real but the profile is not. This takes five seconds and defeats months of the Charmer's work.

<sup>11</sup> **Never send money to someone you have not met in person.** Not a wire transfer. Not a gift card. Not cryptocurrency. Not a cash app payment. This rule has no exceptions. "I can't meet because I'm deployed / traveling / in another country" is not an exception—it is a script. A person who loves you and cannot meet you will wait until they can. A person who loves you will never ask you to wire money to an account you've never seen before.

<sup>12</sup> **Verify through a separate channel.** If someone calls claiming to be your relative, hang up and call that relative directly at their known number. If someone messages you on one platform, verify them on another. If someone sends you a video that seems shocking or unbelievable, search for it on a fact-checking site like **snopes.com** or **factcheck.org**. The wolf controls one channel. The wolf cannot control all of them.

<sup>13</sup> **Be skeptical of urgency in relationships.** "I need help NOW." "Don't tell anyone." "This opportunity disappears tomorrow." Urgency, again, is the wolf's favorite weapon. Legitimate emergencies can wait for a phone call to verify. Legitimate investments can wait for you to research them. Legitimate relationships can wait for you to think clearly. Anything that demands you act *before* you can think is demanding that you act *instead* of thinking. And that demand is always, always a wolf.

---

## The Shepherd's Universal Laws

### Being the Principles That Govern All Realms and Defeat All Wolves

<sup>1</sup> Every beast in this guide—the Shapeshifter, the Doppelganger, the Mirage, the Ventriloquist, the Whisperer, the Charmer's Mask—relies on the same small set of human vulnerabilities. The wolves change their costumes. They do not change their tactics. And so the defenses, at their root, are always the same.

• • •

**The First Law: Never Act in Panic.**

<sup>2</sup> Urgency is the weapon. Every scam, without exception, manufactures urgency. Your account will be closed. Your refund will expire. Your grandchild needs help *now*. The warrant will be executed. The deal ends at midnight.

<sup>3</sup> Real emergencies allow verification. Real banks give you time to respond. Real law enforcement does not call you on the phone and demand gift cards. Real opportunities do not vanish the moment you pause to think. If someone demands immediate action, the action they are demanding is *your panic*. Take a breath. Put the phone down. Close the email. The world will still be there in five minutes, and in those five minutes, the wolf will have lost its power.

• • •

**The Second Law: Verify Through Your Own Channels.**

<sup>4</sup> Never use the contact information the wolf gives you. Not the phone number in the email. Not the link in the text. Not the callback number the caller provides. The wolf controls those channels. Go to the source yourself: type the URL, look up the number, use the app you already have, call the person on a number you already saved. The wolf can forge an email, spoof a number, and clone a voice. The wolf cannot intercept you calling your actual bank on your actual phone using a number from your actual credit card.

• • •

**The Third Law: If It Is Too Good to Be True, It Is Not True.**

<sup>5</sup> This is not cynicism. This is arithmetic. A $1,200 product for $89 is not a sale. A stranger offering you a guaranteed 500% return on investment is not generous. A job that pays $5,000 a week for "processing payments" is not a job. The gap between the promise and reality is the space where the wolf lives. The bigger the gap, the bigger the wolf.

• • •

**The Fourth Law: Legitimate Institutions Do Not Ask for Passwords, PINs, or Gift Cards.**

<sup>6</sup> Your bank will never ask for your password. The IRS will never ask you to pay with iTunes gift cards. Your employer will never email you asking for your login credentials. The Social Security Administration will never ask for your Social Security number over the phone—they assigned you the number; they already have it.

<sup>7</sup> If anyone asks for these things, they are a wolf. There are no exceptions to this rule. Not one.

• • •

**The Fifth Law: When in Doubt, Ask Someone.**

<sup>8</sup> There is no shame in saying "Let me check with my son" or "I'm going to call my daughter about this" or "I want to think about it." There is no shame in walking into your bank with a printed email and asking "Is this real?" There is no shame in telling a caller "I'm going to hang up and call you back on your official number."

<sup>9</sup> The wolf *hates* this. The wolf wants you alone. The wolf wants you to feel that checking with someone is embarrassing, that caution is a sign of weakness, that a savvy person would just handle it. The wolf is wrong. The savviest person in the world verifies. The most experienced security professionals in the world verify. The Shepherd—who wrote this entire guide—verifies.

<sup>10</sup> Ask someone. Every time. The wolf cannot survive daylight.

---

## The Shepherd's Closing

<sup>1</sup> You have walked the perimeter with me. You have seen the six beasts. You know their shapes, their costumes, their scripts. You know that an email can wear any face, a phone number can wear any mask, a website can be a movie set, a voice can be a puppet, and a profile can be a costume.

<sup>2</sup> And you know the five laws that defeat them all: don't panic, verify yourself, reject impossible deals, never surrender credentials, and ask someone when you're unsure.

<sup>3</sup> The Preacher would end with a cosmic meditation on the nature of trust in an age of synthetic deception. The Shepherd ends with something simpler:

<sup>4</sup> Lock your door. Check the peephole. And when someone knocks wearing a costume that doesn't quite fit, don't let them in.

<sup>5</sup> The wolves are clever. But they rely entirely on you not knowing what you're looking at. And now you know.

• • •

*Here ends the Shepherd's Field Guide to the Wolves of the Digital Waste.*
*May your inbox be clean and your caller ID be honest.*
*May your passwords be strong and your skepticism stronger.*
*May you never click a link you didn't build yourself.*

• • •

*So it is warned. So it is guarded. So the flock endures.*

***The Shepherd watches. The perimeter holds.***
