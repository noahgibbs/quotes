class QController <
        R00lz::Controller
  def a_quote
   "You can't take the sky from me."
  end

  def card_trick
    n = params["card"] || "Queen"
    "Your card: the #{n} of spades!"
  end

  def shakes
    @noun = :winking
    render(:shakes)
  end
end
