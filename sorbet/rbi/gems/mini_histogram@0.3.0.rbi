# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mini_histogram` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

class MiniHistogram
  def initialize(array, left_p: T.unsafe(nil), edges: T.unsafe(nil)); end

  def array; end
  def bin_size; end
  def closed; end
  def edge; end
  def edges; end
  def edges_max; end
  def edges_min; end
  def histogram(*_); end
  def left_p; end
  def max; end
  def plot(nbins: T.unsafe(nil), closed: T.unsafe(nil), symbol: T.unsafe(nil), **kw); end
  def sturges; end
  def update_values(edges:, max:); end
  def weights; end

  private

  def barplot(*args, width: T.unsafe(nil), color: T.unsafe(nil), symbol: T.unsafe(nil), border: T.unsafe(nil), xscale: T.unsafe(nil), xlabel: T.unsafe(nil), data: T.unsafe(nil), **kw); end
  def ceil_neg_log10(x); end
  def float_round_log10(x, m); end
  def roundable?(x); end

  class << self
    def dual_plot; end
    def set_average_edges!(*array_of_histograms); end
  end
end

class MiniHistogram::Error < ::StandardError
end

MiniHistogram::INT64_MAX = T.let(T.unsafe(nil), Integer)

MiniHistogram::INT64_MIN = T.let(T.unsafe(nil), Integer)

MiniHistogram::VERSION = T.let(T.unsafe(nil), String)

MiniHistogram::MiniUnicodePlot::BORDER_MAP = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::Barplot::DEFAULT_COLOR = T.let(T.unsafe(nil), Symbol)

MiniHistogram::MiniUnicodePlot::Barplot::DEFAULT_SYMBOL = T.let(T.unsafe(nil), String)

MiniHistogram::MiniUnicodePlot::Barplot::MIN_WIDTH = T.let(T.unsafe(nil), Integer)

MiniHistogram::MiniUnicodePlot::BorderMaps::BORDER_BARPLOT = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::BorderMaps::BORDER_CORNERS = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::BorderMaps::BORDER_SOLID = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::Plot::COLOR_CYCLE = T.let(T.unsafe(nil), Array)

MiniHistogram::MiniUnicodePlot::Plot::DEFAULT_BORDER = T.let(T.unsafe(nil), Symbol)

MiniHistogram::MiniUnicodePlot::Plot::DEFAULT_MARGIN = T.let(T.unsafe(nil), Integer)

MiniHistogram::MiniUnicodePlot::Plot::DEFAULT_PADDING = T.let(T.unsafe(nil), Integer)

MiniHistogram::MiniUnicodePlot::Plot::DEFAULT_WIDTH = T.let(T.unsafe(nil), Integer)

MiniHistogram::MiniUnicodePlot::StyledPrinter::COLOR_DECODE = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::StyledPrinter::COLOR_ENCODE = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::StyledPrinter::DISABLE_TEXT_STYLE = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::StyledPrinter::TEXT_COLORS = T.let(T.unsafe(nil), Hash)

MiniHistogram::MiniUnicodePlot::ValueTransformer::PREDEFINED_TRANSFORM_FUNCTIONS = T.let(T.unsafe(nil), Hash)